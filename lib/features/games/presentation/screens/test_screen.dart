import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../../shared/widgets/aviation_app_bar.dart';
import '../../../../core/theme/app_theme.dart';

/// Actual test screen for psychometric tests
class TestScreen extends ConsumerStatefulWidget {
  final String gameId;

  const TestScreen({
    super.key,
    required this.gameId,
  });

  @override
  ConsumerState<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends ConsumerState<TestScreen> {
  bool isTestStarted = false;
  int currentQuestion = 0;
  int score = 0;
  int totalQuestions = 20;
  int timeRemaining = 300; // 5 minutes in seconds
  late Timer _timer;
  List<String> shapes = ['🔴', '🔵', '🟡', '🟢', '⚫'];
  String targetShape = '';
  bool isCorrect = false;
  bool showResult = false;

  @override
  void initState() {
    super.initState();
    _startTest();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTest() {
    setState(() {
      isTestStarted = true;
      _generateQuestion();
    });
    
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timeRemaining > 0) {
          timeRemaining--;
        } else {
          _endTest();
        }
      });
    });
  }

  void _generateQuestion() {
    setState(() {
      targetShape = shapes[Random().nextInt(shapes.length)];
      showResult = false;
    });
  }

  void _checkAnswer(String selectedShape) {
    setState(() {
      isCorrect = selectedShape == targetShape;
      showResult = true;
      
      if (isCorrect) {
        score++;
      }
    });

    Future.delayed(const Duration(milliseconds: 500), () {
      if (currentQuestion < totalQuestions - 1) {
        setState(() {
          currentQuestion++;
        });
        _generateQuestion();
      } else {
        _endTest();
      }
    });
  }

  void _endTest() {
    _timer.cancel();
    setState(() {
      isTestStarted = false;
    });
    
    // Calculate accuracy
    double accuracy = totalQuestions > 0 ? score / totalQuestions : 0.0;
    
    // Show results
    _showResultDialog(
      score: score,
      maxScore: totalQuestions,
      duration: 300 - timeRemaining,
      accuracy: accuracy,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F7),
      appBar: AviationAppBar(
        title: 'Test Devam Ediyor',
        showBack: false, // Prevent going back during test
      ),
      body: Stack(
        children: [
          // Background pattern
          Positioned.fill(
            child: Opacity(
              opacity: 0.05,
              child: SvgPicture.network(
                'https://www.svgrepo.com/show/331760/radar.svg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // Main content
          Column(
            children: [
              // Progress and timer bar
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    // Progress
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Soru ${currentQuestion + 1} / $totalQuestions',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 4),
                          LinearProgressIndicator(
                            value: (currentQuestion + 1) / totalQuestions,
                            backgroundColor: AppTheme.gray300,
                            valueColor: AlwaysStoppedAnimation<Color>(AppTheme.thyRed),
                          ),
                        ],
                      ),
                    ),
                    
                    const SizedBox(width: 16),
                    
                    // Timer
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: timeRemaining < 60 ? AppTheme.error : AppTheme.thyRed,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '${(timeRemaining ~/ 60).toString().padLeft(2, '0')}:${(timeRemaining % 60).toString().padLeft(2, '0')}',
                        style: GoogleFonts.barlow(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Test content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Target shape instruction
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            children: [
                              Text(
                                'Bu şekli bulun:',
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                targetShape,
                                style: const TextStyle(fontSize: 48),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 32),
                      
                      // Answer options
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 1,
                        ),
                        itemCount: shapes.length,
                        itemBuilder: (context, index) {
                          final shape = shapes[index];
                          final isSelected = showResult && shape == targetShape;
                          
                          return GestureDetector(
                            onTap: () => _checkAnswer(shape),
                            child: Animate(
                              effects: [
                                if (isSelected) ...[
                                  ScaleEffect(duration: 200.ms, scale: 1.1),
                                  ShakeEffect(duration: 200.ms),
                                ],
                              ],
                              child: Container(
                                decoration: BoxDecoration(
                                  color: isSelected 
                                      ? (isCorrect ? Colors.green : Colors.red)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    shape,
                                    style: const TextStyle(fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // Score display
                      Text(
                        'Puan: $score / $totalQuestions',
                        style: GoogleFonts.barlow(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.thyRed,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showResultDialog({required int score, required int maxScore, required int duration, required double accuracy}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.92),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF0C2340).withOpacity(0.12),
                blurRadius: 24,
                offset: const Offset(0, 8),
              ),
            ],
            border: Border.all(
              color: const Color(0xFF0C2340).withOpacity(0.08),
              width: 1.2,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.network(
                'https://www.svgrepo.com/show/488403/airplane.svg',
                width: 48,
                height: 48,
                colorFilter: const ColorFilter.mode(Color(0xFF0C2340), BlendMode.srcIn),
              ),
              const SizedBox(height: 12),
              Text(
                'Test Tamamlandı!',
                style: GoogleFonts.barlow(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF0C2340),
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 18),
              // Score display
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFF0C2340),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF0C2340).withOpacity(0.12),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.score, color: const Color(0xFFFFB400), size: 28),
                    const SizedBox(width: 10),
                    Text(
                      '$score',
                      style: GoogleFonts.barlow(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFFFB400),
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      ' / $maxScore',
                      style: GoogleFonts.barlow(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.timer, color: const Color(0xFF0C2340)),
                      const SizedBox(height: 4),
                      Text(
                        '${(duration ~/ 60).toString().padLeft(2, '0')}:${(duration % 60).toString().padLeft(2, '0')}',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF0C2340),
                        ),
                      ),
                      Text('Süre', style: GoogleFonts.inter(fontSize: 12, color: const Color(0xFFA9A9A9))),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.check_circle, color: const Color(0xFF0C2340)),
                      const SizedBox(height: 4),
                      Text(
                        '${(accuracy * 100).toStringAsFixed(1)}%',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF0C2340),
                        ),
                      ),
                      Text('Doğruluk', style: GoogleFonts.inter(fontSize: 12, color: const Color(0xFFA9A9A9))),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                  context.go('/games'); // Go back to games screen
                },
                icon: const Icon(Icons.arrow_forward_ios),
                label: const Text('Tamamla'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFB400),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                  textStyle: GoogleFonts.barlow(fontSize: 16, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 