import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../core/theme/app_theme.dart';

/// Aviation Hero Dashboard with immersive cockpit experience
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
    this.expandedHeight = 400,
    this.userName,
    this.isUserLoggedIn = false,
  });

  @override
  State<AviationHeroDashboard> createState() => _AviationHeroDashboardState();
}

class _AviationHeroDashboardState extends State<AviationHeroDashboard>
    with TickerProviderStateMixin {
  late AnimationController _jetController;
  late AnimationController _contrailController;
  late AnimationController _hudController;
  late AudioPlayer _audioPlayer;
  
  bool _showContrail = false;
  bool _isJetTapped = false;
  double _jetRotation = 0.0;
  double _knotSpeed = 450.0;

  @override
  void initState() {
    super.initState();
    _initializeControllers();
    _initializeAudio();
    _startHUDAnimation();
  }

  @override
  void dispose() {
    _jetController.dispose();
    _contrailController.dispose();
    _hudController.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  void _initializeControllers() {
    _jetController = AnimationController(
      duration: const Duration(seconds: 8),
      vsync: this,
    );
    
    _contrailController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    _hudController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
  }

  void _initializeAudio() {
    _audioPlayer = AudioPlayer();
  }

  void _startHUDAnimation() {
    _hudController.repeat(reverse: true);
  }

  void _onJetTap() async {
    setState(() {
      _isJetTapped = true;
      _showContrail = true;
    });

    // Play cockpit chime
    try {
      await _audioPlayer.play(AssetSource('audio/cabin_chime.mp3'));
    } catch (e) {
      // Fallback if audio file doesn't exist
      debugPrint('Audio file not found: $e');
    }

    // Start contrail animation
    _contrailController.forward().then((_) {
      setState(() {
        _showContrail = false;
      });
      _contrailController.reset();
    });

    // Reset jet tap state
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _isJetTapped = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Calculate jet rotation based on scroll
    _jetRotation = (widget.scrollOffset * 0.02).clamp(-10.0, 10.0);
    
    return Stack(
      children: [
        // Aviation Sky Background Layer
        _buildAviationBackground(),
        
        // HUD Overlay (Cockpit Interface)
        _buildHUDOverlay(),
        
        // Animated Jet Layer
        _buildAnimatedJet(),
        
        // Contrail Effect
        if (_showContrail) _buildContrailEffect(),
        
        // Dynamic Greeting
        if (widget.isUserLoggedIn) _buildDynamicGreeting(),
        
        // Hero Content
        _buildHeroContent(),
      ],
    );
  }

  /// Builds the aviation sky background with gradient overlay
  Widget _buildAviationBackground() {
    return Positioned.fill(
      child: ShaderMask(
        shaderCallback: (bounds) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppTheme.thyRed.withOpacity(0.8),
              const Color(0xFF0C2340).withOpacity(0.9),
              const Color(0xFF1a1a2e).withOpacity(0.95),
            ],
          ).createShader(bounds);
        },
        blendMode: BlendMode.overlay,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppTheme.thyRed,
                const Color(0xFF0C2340),
                const Color(0xFF1a1a2e),
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
      ),
    );
  }

  /// Builds the HUD (Heads Up Display) overlay
  Widget _buildHUDOverlay() {
    return Positioned(
      top: 60,
      left: 20,
      child: AnimatedBuilder(
        animation: _hudController,
        builder: (context, child) {
          return Opacity(
            opacity: 0.7 + (_hudController.value * 0.3),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFF7CFC00).withOpacity(0.6),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "KNOT SPEED: ${_knotSpeed.toStringAsFixed(0)}",
                    style: GoogleFonts.orbitron(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF7CFC00),
                      shadows: [
                        Shadow(
                          blurRadius: 3,
                          color: const Color(0xFF7CFC00).withOpacity(0.8),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "ALTITUDE: 35,000 FT",
                    style: GoogleFonts.orbitron(
                      fontSize: 10,
                      color: const Color(0xFF7CFC00).withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  /// Builds the animated jet with scroll-based rotation
  Widget _buildAnimatedJet() {
    return Positioned(
      top: 80,
      right: -30,
      child: Transform.translate(
        offset: Offset(widget.scrollOffset * 0.3, 0),
        child: Transform.rotate(
          angle: _jetRotation * math.pi / 180,
          child: GestureDetector(
            onTap: _onJetTap,
            child: AnimatedScale(
              scale: _isJetTapped ? 1.1 : 1.0,
              duration: const Duration(milliseconds: 200),
              child: SizedBox(
                width: 120,
                height: 80,
                child: Lottie.asset(
                  'assets/animations/plane_fly.json',
                  fit: BoxFit.contain,
                  repeat: true,
                  animate: true,
                  errorBuilder: (context, error, stackTrace) {
                    // Fallback to custom airplane icon
                    return Icon(
                      Icons.flight,
                      size: 60,
                      color: Colors.white.withOpacity(0.8),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the contrail effect when jet is tapped
  Widget _buildContrailEffect() {
    return Positioned(
      top: 110,
      right: 60,
      child: AnimatedBuilder(
        animation: _contrailController,
        builder: (context, child) {
          return Opacity(
            opacity: (1.0 - _contrailController.value),
            child: Transform.translate(
              offset: Offset(-_contrailController.value * 100, 0),
              child: Container(
                width: 80,
                height: 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.8),
                      Colors.white.withOpacity(0.3),
                      Colors.transparent,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// Builds the dynamic greeting for logged-in users
  Widget _buildDynamicGreeting() {
    return Positioned(
      top: 120,
      left: 20,
      child: Text(
        "Kaptan Hoş Geldiniz, ${widget.userName ?? 'Pilot'}",
        style: GoogleFonts.barlow(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          shadows: [
            Shadow(
              offset: const Offset(0, 1),
              blurRadius: 2,
              color: Colors.black.withOpacity(0.5),
            ),
          ],
        ),
      ).animate().fadeIn(duration: 700.ms),
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
              style: GoogleFonts.barlow(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ],
              ),
            ).animate().fadeIn(duration: 800.ms).slideX(begin: -0.3),
            
            const SizedBox(height: 16),
            
            // Subtitle
            Text(
              widget.subtitle,
              style: GoogleFonts.inter(
                fontSize: 16,
                color: Colors.white.withOpacity(0.9),
                shadows: [
                  Shadow(
                    offset: const Offset(0, 1),
                    blurRadius: 2,
                    color: Colors.black.withOpacity(0.3),
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
    );
  }

  /// Builds the animated CTA button with aviation styling
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
            backgroundColor: const Color(0xFFFFB800), // Jet Yellow
            foregroundColor: const Color(0xFF0C2340), // Navy Blue
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 16,
            ),
            elevation: isMidScreen ? 8 : 4,
            shadowColor: const Color(0xFFFFB800).withOpacity(0.4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.ctaText,
                style: GoogleFonts.barlow(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.flight_takeoff,
                size: 18,
              ),
            ],
          ),
        ),
      ).animate(
        onPlay: (controller) => controller.repeat(),
      ).shimmer(
        duration: 3.seconds,
        color: Colors.white.withOpacity(0.3),
        size: 2.0,
      ),
    );
  }
}

/// Custom painter for sky pattern
class SkyPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.1)
      ..strokeWidth = 1;

    // Draw cloud-like patterns
    for (int i = 0; i < 20; i++) {
      final x = (i * 50) % size.width;
      final y = (i * 30) % size.height;
      canvas.drawCircle(Offset(x, y), 20 + (i % 3) * 10, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
} 