import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import '../../../../shared/widgets/aviation_app_bar.dart';
import '../../../../shared/widgets/aviation_hero_dashboard.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/models/course_model.dart';
import '../widgets/course_card.dart';
import '../widgets/category_filter.dart';
import '../providers/courses_provider.dart';
import 'package:provider/provider.dart';

/// Home screen with course listings
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  String selectedAirline = 'All Courses';
  String searchQuery = '';
  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    setState(() {
      _scrollOffset = _scrollController.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F7),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // Aviation Hero Dashboard with immersive cockpit experience
          SliverAppBar(
            expandedHeight: 450,
            floating: false,
            pinned: true,
            backgroundColor: AppTheme.thyRed,
            flexibleSpace: FlexibleSpaceBar(
              background: AviationHeroDashboard(
                title: 'Havacılık Kariyerinizi Başlatın',
                subtitle: 'THY, Pegasus, SunExpress ve diğer havayollarının cadet programlarına hazırlanın.',
                ctaText: 'Kursları Keşfedin',
                scrollOffset: _scrollOffset,
                onCTAPressed: () {
                  // Navigate to courses or trigger course discovery
                  context.go('/home');
                },
                userName: 'Furkan', // Mock user name
                isUserLoggedIn: true, // Mock login state
              ),
            ),
            title: _buildAppBarTitle(),
            elevation: 0,
          ),
          
          // Content Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Airline Selector
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Havayolu Seçin',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Wrap(
                            spacing: 8,
                            children: AppConstants.airlineCategories.map((airline) {
                              return FilterChip(
                                label: Text(airline),
                                selected: selectedAirline == airline,
                                onSelected: (selected) {
                                  setState(() {
                                    selectedAirline = airline;
                                  });
                                },
                                selectedColor: AppTheme.thyRed.withOpacity(0.2),
                                checkmarkColor: AppTheme.thyRed,
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Search Bar
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Kurs ara...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        searchQuery = value;
                      });
                    },
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Featured Courses
                  Text(
                    'Öne Çıkan Kurslar',
                    style: GoogleFonts.barlow(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF0C2340),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Course Grid
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: _getFilteredCourses().length,
                    itemBuilder: (context, index) {
                      final course = _getFilteredCourses()[index];
                      return _buildCourseCard(course);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the app bar title that appears when scrolling
  Widget _buildAppBarTitle() {
    return AnimatedOpacity(
      opacity: _scrollOffset > 200 ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 200),
      child: Text(
        'My Cadet',
        style: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppTheme.white,
        ),
      ),
    );
  }

  Widget _buildCourseCard(CourseModel course) {
    return GestureDetector(
      onTap: () {
        // Navigate to course detail screen
        context.go('/course/${course.id}');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF0C2340).withOpacity(0.10),
              blurRadius: 18,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Stack(
            children: [
              // Glassmorphism effect
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.65),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: const Color(0xFF0C2340).withOpacity(0.08),
                    width: 1.2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.18),
                      blurRadius: 24,
                      spreadRadius: 2,
                    ),
                  ],
                ),
              ),
              // Aviation icon (airplane SVG)
              Positioned(
                top: 8,
                right: 8,
                child: Opacity(
                  opacity: 0.12,
                  child: SvgPicture.network(
                    'https://www.svgrepo.com/show/488403/airplane.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
              // Card content
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Logo/Image section
                    Container(
                      height: 40,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: course.imageUrl != null && course.imageUrl!.endsWith('.svg')
                          ? SvgPicture.network(
                              course.imageUrl!,
                              height: 30,
                              placeholderBuilder: (context) => const CircularProgressIndicator(strokeWidth: 1),
                            )
                          : (course.imageUrl != null
                              ? Image.network(
                                  course.imageUrl!,
                                  height: 30,
                                  fit: BoxFit.contain,
                                )
                              : Icon(Icons.flight, size: 24, color: const Color(0xFF0C2340))),
                    ),
                    const SizedBox(height: 6),
                    // Title
                    Expanded(
                      child: Text(
                        course.title,
                        style: GoogleFonts.barlow(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF0C2340),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    // Airline
                    Text(
                      course.airline,
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        color: const Color(0xFFA9A9A9),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    // Price and arrow
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            '₺${course.price.toStringAsFixed(0)}',
                            style: GoogleFonts.barlow(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFFFB400), // aviation yellow
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: const Color(0xFF0C2340),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<CourseModel> _getFilteredCourses() {
    final courses = [
      CourseModel(
        id: '1',
        title: 'THY Cadet Programı',
        description: 'Türk Hava Yolları pilot adaylığı programı',
        airline: 'THY',
        category: 'Pilot',
        price: 2999.0,
        steps: [],
        imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Turkish_Airlines_logo.svg',
      ),
      CourseModel(
        id: '2',
        title: 'Pegasus Cadet Programı',
        description: 'Pegasus Havayolları pilot adaylığı programı',
        airline: 'Pegasus',
        category: 'Pilot',
        price: 2499.0,
        steps: [],
        imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Pegasus_Airlines_logo.svg',
      ),
      CourseModel(
        id: '3',
        title: 'SunExpress Cadet Programı',
        description: 'SunExpress pilot adaylığı programı',
        airline: 'SunExpress',
        category: 'Pilot',
        price: 2799.0,
        steps: [],
        imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/6/6b/SunExpress_logo.svg',
      ),
    ];

    return courses.where((course) {
      final matchesAirline = selectedAirline == 'All Courses' ||
          course.airline == selectedAirline;
      final matchesSearch = searchQuery.isEmpty ||
          course.title.toLowerCase().contains(searchQuery.toLowerCase()) ||
          course.description.toLowerCase().contains(searchQuery.toLowerCase());
      return matchesAirline && matchesSearch;
    }).toList();
  }
} 