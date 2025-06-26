import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/theme/app_theme.dart';

/// A reusable parallax hero header widget with aviation-themed animations
class ParallaxHeroHeader extends StatefulWidget {
  final String title;
  final String subtitle;
  final String ctaText;
  final VoidCallback? onCTAPressed;
  final double scrollOffset;
  final double expandedHeight;
  final List<Color> gradientColors;
  final String? backgroundPatternUrl;
  final String? airplaneAnimationUrl;
  final bool showFloatingClouds;

  const ParallaxHeroHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.ctaText,
    this.onCTAPressed,
    required this.scrollOffset,
    this.expandedHeight = 400,
    this.gradientColors = const [AppTheme.thyRed, AppTheme.thyDarkRed],
    this.backgroundPatternUrl,
    this.airplaneAnimationUrl,
    this.showFloatingClouds = true,
  });

  @override
  State<ParallaxHeroHeader> createState() => _ParallaxHeroHeaderState();
}

class _ParallaxHeroHeaderState extends State<ParallaxHeroHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Parallax Background Layer
        Positioned.fill(
          child: Transform.translate(
            offset: Offset(0, widget.scrollOffset * 0.5), // Parallax effect
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    ...widget.gradientColors,
                    const Color(0xFF1a1a2e),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  // Background Pattern
                  if (widget.backgroundPatternUrl != null)
                    Positioned.fill(
                      child: Opacity(
                        opacity: 0.1,
                        child: Image.network(
                          widget.backgroundPatternUrl!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(); // Fallback if image fails to load
                          },
                        ),
                      ),
                    ),
                  
                  // Animated Airplane Layer
                  if (widget.airplaneAnimationUrl != null)
                    Positioned(
                      top: 50,
                      right: -20,
                      child: Transform.translate(
                        offset: Offset(widget.scrollOffset * 0.3, 0), // Horizontal parallax
                        child: _buildAnimatedAirplane(),
                      ),
                    ),
                  
                  // Floating Clouds Effect
                  if (widget.showFloatingClouds)
                    Positioned(
                      top: 100,
                      left: -30,
                      child: Transform.translate(
                        offset: Offset(-widget.scrollOffset * 0.2, 0),
                        child: _buildFloatingClouds(),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        
        // Backdrop Filter for Modern Blur Effect
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.transparent,
                    Colors.black.withOpacity(0.1),
                  ],
                ),
              ),
            ),
          ),
        ),
        
        // Hero Content
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                
                // Main Title with Animation
                Text(
                  widget.title,
                  style: GoogleFonts.inter(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.white,
                    shadows: [
                      Shadow(
                        offset: const Offset(0, 2),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                  ),
                ).animate().fadeIn(duration: 800.ms).slideX(begin: -0.3),
                
                const SizedBox(height: 16),
                
                // Subtitle with Animation
                Text(
                  widget.subtitle,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: AppTheme.white.withOpacity(0.9),
                    shadows: [
                      Shadow(
                        offset: const Offset(0, 1),
                        blurRadius: 2,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ],
                  ),
                ).animate().fadeIn(delay: 200.ms, duration: 800.ms).slideX(begin: -0.2),
                
                const SizedBox(height: 32),
                
                // Animated CTA Button
                _buildAnimatedCTAButton(),
                
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Builds the animated airplane using Lottie
  Widget _buildAnimatedAirplane() {
    return SizedBox(
      width: 120,
      height: 80,
      child: Lottie.network(
        widget.airplaneAnimationUrl ?? 'https://assets2.lottiefiles.com/packages/lf20_2znxgjyt.json',
        fit: BoxFit.contain,
        repeat: true,
        animate: true,
        errorBuilder: (context, error, stackTrace) {
          // Fallback to a simple airplane icon if Lottie fails
          return Icon(
            Icons.flight,
            size: 60,
            color: Colors.white.withOpacity(0.6),
          );
        },
      ),
    ).animate(
      onPlay: (controller) => controller.repeat(),
    ).moveX(
      begin: 0,
      end: -50,
      duration: 8.seconds,
      curve: Curves.easeInOut,
    ).then().moveX(
      begin: -50,
      end: 0,
      duration: 8.seconds,
      curve: Curves.easeInOut,
    );
  }

  /// Builds floating clouds effect
  Widget _buildFloatingClouds() {
    return Row(
      children: [
        _buildCloud(0),
        const SizedBox(width: 40),
        _buildCloud(1),
        const SizedBox(width: 60),
        _buildCloud(2),
      ],
    );
  }

  Widget _buildCloud(int index) {
    return Opacity(
      opacity: 0.3,
      child: Icon(
        Icons.cloud,
        size: 30 + (index * 10.0),
        color: Colors.white,
      ),
    ).animate(
      delay: Duration(milliseconds: index * 500),
    ).moveY(
      begin: 0,
      end: -20,
      duration: 4.seconds,
      curve: Curves.easeInOut,
    ).then().moveY(
      begin: -20,
      end: 0,
      duration: 4.seconds,
      curve: Curves.easeInOut,
    );
  }

  /// Builds the animated CTA button with scroll-responsive effects
  Widget _buildAnimatedCTAButton() {
    final isMidScreen = widget.scrollOffset > 100;
    
    return Animate(
      effects: [
        FadeEffect(duration: 800.ms),
        ScaleEffect(
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
          curve: Curves.easeOutBack,
        ),
      ],
      child: Transform.scale(
        scale: isMidScreen ? 1.05 : 1.0,
        child: ElevatedButton(
          onPressed: widget.onCTAPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.white,
            foregroundColor: AppTheme.thyRed,
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 16,
            ),
            elevation: isMidScreen ? 8 : 4,
            shadowColor: AppTheme.thyRed.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.ctaText,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.arrow_forward,
                size: 18,
              ),
            ],
          ),
        ),
      ).animate(
        onPlay: (controller) => controller.repeat(),
      ).shimmer(
        duration: 2.seconds,
        color: AppTheme.thyRed.withOpacity(0.3),
        size: 2.0,
      ),
    );
  }
} 