import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/theme/app_theme.dart';
import '../../core/constants/app_constants.dart';

/// Splash screen widget
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _textController;

  @override
  void initState() {
    super.initState();
    _logoController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _textController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _startAnimation();
  }

  void _startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    _logoController.forward();
    
    await Future.delayed(const Duration(milliseconds: 800));
    _textController.forward();
    
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      context.go('/home'); // Will be changed to check auth status later
    }
  }

  @override
  void dispose() {
    _logoController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.thyRed,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Animation
            AnimatedBuilder(
              animation: _logoController,
              builder: (context, child) {
                return Transform.scale(
                  scale: _logoController.value,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: AppTheme.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.black.withOpacity(0.2),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.flight,
                      size: 60,
                      color: AppTheme.thyRed,
                    ),
                  ),
                );
              },
            ).animate().fadeIn(duration: 600.ms),
            
            const SizedBox(height: 40),
            
            // App Name Animation
            AnimatedBuilder(
              animation: _textController,
              builder: (context, child) {
                return Opacity(
                  opacity: _textController.value,
                  child: Transform.translate(
                    offset: Offset(0, 20 * (1 - _textController.value)),
                    child: Text(
                      AppConstants.appName,
                      style: GoogleFonts.inter(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                );
              },
            ).animate().fadeIn(delay: 300.ms),
            
            const SizedBox(height: 8),
            
            // App Description Animation
            AnimatedBuilder(
              animation: _textController,
              builder: (context, child) {
                return Opacity(
                  opacity: _textController.value,
                  child: Transform.translate(
                    offset: Offset(0, 20 * (1 - _textController.value)),
                    child: Text(
                      AppConstants.appDescription,
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                );
              },
            ).animate().fadeIn(delay: 500.ms),
            
            const SizedBox(height: 60),
            
            // Loading Indicator
            AnimatedBuilder(
              animation: _textController,
              builder: (context, child) {
                return Opacity(
                  opacity: _textController.value,
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppTheme.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                );
              },
            ).animate().fadeIn(delay: 700.ms),
          ],
        ),
      ),
    );
  }
} 