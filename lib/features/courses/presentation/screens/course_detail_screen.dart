import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../shared/widgets/aviation_app_bar.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_constants.dart';
import '../widgets/course_progress_indicator.dart';
import '../widgets/lesson_list_item.dart';
import '../providers/courses_provider.dart';
import 'package:provider/provider.dart';

/// Course detail screen
class CourseDetailScreen extends ConsumerStatefulWidget {
  final String courseId;

  const CourseDetailScreen({
    super.key,
    required this.courseId,
  });

  @override
  ConsumerState<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends ConsumerState<CourseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F7),
      appBar: const AviationAppBar(
        title: 'Kurs Detayı',
        showBack: true,
        // logoAsset: 'assets/icons/thy_logo.svg', // Uncomment if you have a logo asset
      ),
      body: Stack(
        children: [
          // Radar SVG background
          Positioned(
            top: -40,
            left: -40,
            child: Opacity(
              opacity: 0.08,
              child: SvgPicture.network(
                'https://www.svgrepo.com/show/331760/radar.svg',
                width: 220,
                height: 220,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Glassmorphism course info card
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF0C2340).withOpacity(0.10),
                          blurRadius: 18,
                          offset: const Offset(0, 8),
                        ),
                      ],
                      border: Border.all(
                        color: const Color(0xFF0C2340).withOpacity(0.08),
                        width: 1.2,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.network(
                                'https://www.svgrepo.com/show/488403/airplane.svg',
                                width: 36,
                                height: 36,
                                colorFilter: const ColorFilter.mode(Color(0xFF0C2340), BlendMode.srcIn),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  'THY Cadet Programı',
                                  style: GoogleFonts.barlow(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF0C2340),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Türk Hava Yolları pilot adaylığı programı',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color(0xFFA9A9A9),
                            ),
                          ),
                          const SizedBox(height: 18),
                          // Digital flight-display style price
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
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
                                Icon(Icons.price_check, color: const Color(0xFFFFB400), size: 24),
                                const SizedBox(width: 8),
                                Text(
                                  '₺2,999',
                                  style: GoogleFonts.barlow(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFFFB400),
                                    letterSpacing: 2.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  // Steps
                  Text(
                    'Kurs Adımları',
                    style: GoogleFonts.barlow(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF0C2340),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...AppConstants.thyCadetSteps.map((step) => _buildStepCard(step)).toList(),
                  const SizedBox(height: 32),
                  // Action Buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Kurs sepete eklendi'),
                                backgroundColor: Color(0xFF10B981),
                              ),
                            );
                          },
                          icon: const Icon(Icons.shopping_cart),
                          label: const Text('Sepete Ekle'),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            side: const BorderSide(color: Color(0xFFE30613)),
                            foregroundColor: const Color(0xFFE30613),
                            textStyle: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            context.go('/game/1');
                          },
                          icon: const Icon(Icons.play_arrow),
                          label: const Text('Hemen Başla'),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            backgroundColor: const Color(0xFFFFB400),
                            foregroundColor: Colors.white,
                            textStyle: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepCard(String stepTitle) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: AppTheme.thyRed.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            Icons.quiz,
            color: AppTheme.thyRed,
            size: 24,
          ),
        ),
        title: Text(
          stepTitle,
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: const Text(
          'Bu adımı tamamlamak için tıklayın',
          style: TextStyle(fontSize: 14),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Navigate to step detail
        },
      ),
    );
  }
} 