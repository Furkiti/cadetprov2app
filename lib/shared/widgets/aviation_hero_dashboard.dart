import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../core/theme/app_theme.dart';

/// Immersive Aviation Hero Dashboard with Cockpit Experience
class AviationHeroDashboard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String ctaText;
  final VoidCallback? onCTAPressed;
  final double scrollOffset;
  final double expandedHeight;
  final String? userName;
  final bool isUserLoggedIn;

  const AviationHeroDashboard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.ctaText,
    this.onCTAPressed,
    required this.scrollOffset,
    this.expandedHeight = 450,
    this.userName,
    this.isUserLoggedIn = false,
  });

  @override
  State<AviationHeroDashboard> createState() => _AviationHeroDashboardState();
}

class _AviationHeroDashboardState extends State<AviationHeroDashboard>
    with TickerProviderStateMixin {
  late AnimationController _planeController;
  late AnimationController _contrailController;
  late AnimationController _hudController;
  late AnimationController _radarController;
  late AudioPlayer _audioPlayer;
  
  bool _showContrail = false;
  bool _isPlaneTapped = false;
  bool _hasPlayedWelcome = false;
  double _planeRotation = 0.0;
  double _knotSpeed = 450.0;
  double _altitude = 35000.0;
  double _windSpeed = 25.0;

  @override
  void initState() {
    super.initState();
    _initializeControllers();
    _initializeAudio();
    _playWelcomeSound();
  }

  @override
  void dispose() {
    _planeController.dispose();
    _contrailController.dispose();
    _hudController.dispose();
    _radarController.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  void _initializeControllers() {
    _planeController = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );
    
    _contrailController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    _hudController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    
    _radarController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    
    // Start continuous animations
    _hudController.repeat(reverse: true);
    _radarController.repeat();
  }

  void _initializeAudio() {
    _audioPlayer = AudioPlayer();
  }

  void _playWelcomeSound() async {
    if (!_hasPlayedWelcome) {
      try {
        await _audioPlayer.play(AssetSource('audio/cabin_chime.mp3'));
        _hasPlayedWelcome = true;
      } catch (e) {
        debugPrint('Welcome audio not found: $e');
      }
    }
  }

  void _onPlaneTap() async {
    setState(() {
      _isPlaneTapped = true;
      _showContrail = true;
    });

    // Play cockpit sound
    try {
      await _audioPlayer.play(AssetSource('audio/cabin_chime.mp3'));
    } catch (e) {
      debugPrint('Cockpit audio not found: $e');
    }

    // Start contrail animation
    _contrailController.forward().then((_) {
      setState(() {
        _showContrail = false;
      });
      _contrailController.reset();
    });

    // Reset plane tap state
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _isPlaneTapped = false;
        });
      }
    });
  }

  void _onRadarTap() async {
    // Play radar ping sound
    try {
      await _audioPlayer.play(AssetSource('audio/radar_ping.mp3'));
    } catch (e) {
      debugPrint('Radar ping audio not found: $e');
    }

    // Trigger special radar pulse effect
    _radarController.stop();
    _radarController.forward().then((_) {
      _radarController.repeat();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Calculate plane rotation based on scroll (aileron motion)
    _planeRotation = (widget.scrollOffset * 0.001).clamp(-15.0, 15.0);
    
    return Stack(
      children: [
        // Aviation Sky Background with Gradient
        _buildAviationBackground(),
        
        // Silhouette Background Image (more visible)
        Positioned.fill(
          child: Opacity(
            opacity: 0.18,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.blueGrey.shade900.withOpacity(0.35),
                BlendMode.darken,
              ),
              child: Image.asset(
                'assets/images/cadet_background.png',
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        // HUD Grid Overlay
        _buildHUDGrid(),
        
        // Radar Pulse Effect (moved down)
        _buildRadarPulseEffect(),
        
        // Bottom-right airplane animation
        _buildBottomRightPlane(),
        
        // Hero Content
        _buildHeroContent(),
      ],
    );
  }

  /// Builds the aviation sky background with gradient overlay
  Widget _buildAviationBackground() {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFFE30613), // THY Red
              const Color(0xFF0C2340), // Navy Blue
              const Color(0xFF1a1a2e), // Deep Navy
            ],
          ),
        ),
        child: Stack(
          children: [
            // Sky pattern overlay
            Positioned.fill(
              child: Opacity(
                opacity: 0.1,
                child: CustomPaint(
                  painter: SkyPatternPainter(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the HUD grid overlay for cockpit atmosphere
  Widget _buildHUDGrid() {
    return Positioned.fill(
      child: Opacity(
        opacity: 0.05,
        child: CustomPaint(
          painter: HUDGridPainter(),
        ),
      ),
    );
  }

  /// Builds the radar pulse effect with rotating scan arm
  Widget _buildRadarPulseEffect() {
    return Positioned(
      top: 40,
      right: 25,
      child: Tooltip(
        message: 'ATC Radar - Tap for ping',
        preferBelow: true,
        child: GestureDetector(
          onTap: _onRadarTap,
          child: AnimatedBuilder(
            animation: _radarController,
            builder: (context, child) {
              // React to scroll for more dynamic radar
              final scrollReaction = (widget.scrollOffset * 0.01).clamp(0.0, 0.3);
              
              return Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.2),
                  border: Border.all(
                    color: const Color(0xFF00FF9D).withOpacity(0.4 + scrollReaction),
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF00FF9D).withOpacity(0.2 + scrollReaction),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    // Radar circles
                    Center(
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF00FF9D).withOpacity(0.3),
                            width: 0.5,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF00FF9D).withOpacity(0.2),
                            width: 0.5,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF00FF9D).withOpacity(0.15),
                            width: 0.5,
                          ),
                        ),
                      ),
                    ),
                    
                    // Center dot
                    Center(
                      child: Container(
                        width: 3,
                        height: 3,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFF00FF9D).withOpacity(0.8),
                        ),
                      ),
                    ),
                    
                    // Rotating scan arm
                    Center(
                      child: Transform.rotate(
                        angle: _radarController.value * 2 * math.pi,
                        child: Container(
                          width: 1.5,
                          height: 26,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color(0xFF00FF9D).withOpacity(0.8),
                                const Color(0xFF00FF9D).withOpacity(0.3),
                                Colors.transparent,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                      ),
                    ),
                    
                    // Pulse rings
                    ...List.generate(3, (index) {
                      final pulseValue = (_radarController.value + (index * 0.33)) % 1.0;
                      final scale = 0.3 + (pulseValue * 0.7);
                      final opacity = (1.0 - pulseValue) * 0.4;
                      
                      return Center(
                        child: Transform.scale(
                          scale: scale,
                          child: Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xFF00FF9D).withOpacity(opacity),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                    
                    // Blip points with pulsing animation
                    ...List.generate(3, (index) {
                      final blipValue = (_radarController.value + (index * 0.4)) % 1.0;
                      final opacity = 0.3 + (blipValue * 0.7);
                      final scale = 0.8 + (blipValue * 0.4);
                      
                      final positions = [
                        const Offset(10, -7),
                        const Offset(-6, 8),
                        const Offset(7, -14),
                      ];
                      
                      return Positioned(
                        left: 30 + positions[index].dx,
                        top: 30 + positions[index].dy,
                        child: Transform.scale(
                          scale: scale,
                          child: Container(
                            width: 2,
                            height: 2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xFF00FF9D).withOpacity(opacity),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xFF00FF9D).withOpacity(opacity * 0.5),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  /// Builds the animated plane in the bottom-right with idle motion and interaction
  Widget _buildBottomRightPlane() {
    return Positioned(
      bottom: 20,
      right: -40,
      child: GestureDetector(
        onTap: _onPlaneTap,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            // Plane animation
            AnimatedBuilder(
              animation: _planeController,
              builder: (context, child) {
                final idleOffset = math.sin(_planeController.value * 2 * math.pi) * 14;
                final tilt = math.sin(_planeController.value * 2 * math.pi) * 0.09;
                return Transform.translate(
                  offset: Offset(idleOffset, 0),
                  child: Transform.rotate(
                    angle: tilt,
                    child: SizedBox(
                      width: 180,
                      height: 120,
                      child: Lottie.asset(
                        'assets/lottie/plane_loop.json',
                        fit: BoxFit.contain,
                        repeat: true,
                        animate: true,
                        errorBuilder: (context, error, stackTrace) {
                          // Fallback to PNG if Lottie missing
                          return Image.asset(
                            'assets/images/plane.png',
                            fit: BoxFit.contain,
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
            // Contrail effect
            if (_showContrail)
              Positioned(
                bottom: 28,
                right: 100,
                child: AnimatedBuilder(
                  animation: _contrailController,
                  builder: (context, child) {
                    return Opacity(
                      opacity: (1.0 - _contrailController.value),
                      child: Transform.translate(
                        offset: Offset(-_contrailController.value * 120, 0),
                        child: Container(
                          width: 100,
                          height: 6,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(0.8),
                                Colors.white.withOpacity(0.3),
                                Colors.transparent,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }

  /// Builds the main hero content
  Widget _buildHeroContent() {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            
            // Main Title with Aviation Styling
            Text(
              widget.title,
              style: GoogleFonts.barlowCondensed(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: const Color(0xFFF4F5F7),
                letterSpacing: 1.5,
                shadows: [
                  Shadow(
                    offset: const Offset(0, 3),
                    blurRadius: 6,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ],
              ),
            ).animate().fadeIn(duration: 1000.ms).slideX(begin: -0.4),
            
            const SizedBox(height: 20),
            
            // Subtitle
            Text(
              widget.subtitle,
              style: GoogleFonts.manrope(
                fontSize: 16,
                color: const Color(0xFFF4F5F7).withOpacity(0.9),
                height: 1.4,
                shadows: [
                  Shadow(
                    offset: const Offset(0, 1),
                    blurRadius: 3,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ],
              ),
            ).animate().fadeIn(delay: 300.ms, duration: 1000.ms).slideX(begin: -0.3),
            
            const SizedBox(height: 40),
            
            // Animated CTA Button
            _buildAnimatedCTAButton(),
            
            const Spacer(),
          ],
        ),
      ),
    );
  }

  /// Builds the animated CTA button with aviation styling
  Widget _buildAnimatedCTAButton() {
    final isMidScreen = widget.scrollOffset > 100;
    
    return Animate(
      effects: [
        FadeEffect(duration: 1000.ms),
        ScaleEffect(
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.0, 1.0),
          curve: Curves.easeOutBack,
        ),
      ],
      child: Transform.scale(
        scale: isMidScreen ? 1.08 : 1.0,
        child: ElevatedButton(
          onPressed: widget.onCTAPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFFB800), // Jet Yellow
            foregroundColor: const Color(0xFF0C2340), // Navy Blue
            padding: const EdgeInsets.symmetric(
              horizontal: 36,
              vertical: 18,
            ),
            elevation: isMidScreen ? 12 : 6,
            shadowColor: const Color(0xFFFFB800).withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.ctaText,
                style: GoogleFonts.barlowCondensed(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.0,
                ),
              ),
              const SizedBox(width: 12),
              Icon(
                Icons.flight_takeoff,
                size: 20,
              ),
            ],
          ),
        ),
      ).animate(
        onPlay: (controller) => controller.repeat(),
      ).shimmer(
        duration: 4.seconds,
        color: Colors.white.withOpacity(0.4),
        size: 3.0,
      ),
    );
  }
}

/// Custom painter for sky pattern
class SkyPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.08)
      ..strokeWidth = 1;

    // Draw cloud-like patterns
    for (int i = 0; i < 25; i++) {
      final x = (i * 60) % size.width;
      final y = (i * 40) % size.height;
      canvas.drawCircle(Offset(x, y), 25 + (i % 4) * 8, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Custom painter for HUD grid overlay
class HUDGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF7CFC00).withOpacity(0.1)
      ..strokeWidth = 0.5;

    // Draw grid lines
    for (int i = 0; i <= 10; i++) {
      final x = (size.width / 10) * i;
      final y = (size.height / 10) * i;
      
      // Vertical lines
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
      // Horizontal lines
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
} 