import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../../shared/widgets/aviation_app_bar.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_constants.dart';
import '../widgets/game_card.dart';
import '../widgets/game_progress_indicator.dart';
import '../providers/games_provider.dart';
import 'package:provider/provider.dart';

/// Game screen for psychometric tests
class GameScreen extends ConsumerStatefulWidget {
  final String gameId;

  const GameScreen({
    super.key,
    required this.gameId,
  });

  @override
  ConsumerState<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends ConsumerState<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F7),
      appBar: AviationAppBar(
        title: 'Psikometrik Test',
        showBack: true,
        // logoAsset: 'assets/icons/thy_logo.svg', // Uncomment if you have a logo asset
      ),
      body: Stack(
        children: [
          // Radar SVG background
          Positioned(
            bottom: -40,
            right: -40,
            child: Opacity(
              opacity: 0.08,
              child: SvgPicture.network(
                'https://www.svgrepo.com/show/331760/radar.svg',
                width: 220,
                height: 220,
              ),
            ),
          ),
          // Main game content with fade+slide animation
          Animate(
            effects: [FadeEffect(duration: 400.ms), SlideEffect(duration: 400.ms, begin: Offset(0, 0.1))],
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  // Game Info
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.psychology,
                            size: 48,
                            color: AppTheme.thyRed,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Sürdürülebilir Dikkat Testi',
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Bu test, uzun süreli dikkat ve konsantrasyon becerilerinizi ölçer.',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: AppTheme.gray600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Instructions
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Test Talimatları',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            '• Ekranda beliren şekillere dikkat edin\n'
                            '• Belirtilen şekli gördüğünüzde ekrana dokunun\n'
                            '• Test 5 dakika sürecektir\n'
                            '• Hızlı ve doğru tepki vermeye çalışın',
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Start Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Start the actual test
                        _startTest();
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: AppTheme.thyRed,
                        foregroundColor: AppTheme.white,
                      ),
                      child: const Text(
                        'Testi Başlat',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _startTest() {
    // Navigate to the actual test screen
    context.go('/test/${widget.gameId}');
  }
} 