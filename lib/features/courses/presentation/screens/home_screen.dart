import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:audioplayers/audioplayers.dart';
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
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  void _onScroll() {
    setState(() {
      _scrollOffset = _scrollController.offset;
    });
  }

  Future<void> _playBeep() async {
    try {
      await _audioPlayer.play(AssetSource('audio/cockpit_beep.mp3'));
    } catch (e) {
      debugPrint('Beep audio not found: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF051C35),
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
          
          // Aviation-themed course list section
          SliverToBoxAdapter(
            child: Stack(
              children: [
                // Aviation map background
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.12,
                    child: Image.asset(
                      'assets/images/flight_map_bg.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Main content
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Airline Selector with animation
                      Text(
                        'Havayolu Seçin',
                        style: GoogleFonts.barlowCondensed(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: AppConstants.airlineCategories.map((airline) {
                            final isSelected = selectedAirline == airline;
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: ChoiceChip(
                                label: Text(
                                  airline,
                                  style: GoogleFonts.barlowCondensed(
                                    fontWeight: FontWeight.bold,
                                    color: isSelected ? Colors.white : const Color(0xFFB0C4DE),
                                    fontSize: 16,
                                  ),
                                ),
                                selected: isSelected,
                                onSelected: (selected) async {
                                  setState(() {
                                    selectedAirline = airline;
                                  });
                                  await _playBeep();
                                },
                                backgroundColor: const Color(0xFF16243A),
                                selectedColor: AppTheme.thyRed,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: isSelected ? AppTheme.thyRed : Colors.white24,
                                    width: 1.5,
                                  ),
                                ),
                                elevation: isSelected ? 4 : 0,
                                shadowColor: AppTheme.thyRed.withOpacity(0.2),
                                labelPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 2),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 22),
                      // Search Bar
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Kurs ara...',
                          hintStyle: GoogleFonts.inter(color: Colors.white54, fontSize: 15),
                          prefixIcon: const Icon(Icons.search, color: Colors.white38),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: const Color(0xFF16243A),
                          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                        ),
                        style: GoogleFonts.inter(color: Colors.white, fontSize: 15),
                        onChanged: (value) {
                          setState(() {
                            searchQuery = value;
                          });
                        },
                      ),
                      const SizedBox(height: 22),
                      // Course List Title
                      Text(
                        'Öne Çıkan Kurslar',
                        style: GoogleFonts.barlowCondensed(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFFD147),
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 14),
                      // Course Grid with aviation cards
                      GridView.builder(
                        padding: const EdgeInsets.only(bottom: 16),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.82,
                          crossAxisSpacing: 18,
                          mainAxisSpacing: 18,
                        ),
                        itemCount: _getFilteredCourses().length,
                        itemBuilder: (context, index) {
                          final course = _getFilteredCourses()[index];
                          return _buildAviationCourseCard(course, index);
                        },
                      ),
                    ],
                  ),
                ),
              ],
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
        style: GoogleFonts.orbitron(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildAviationCourseCard(CourseModel course, int index) {
    return Animate(
      effects: [
        ScaleEffect(
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.04, 1.04),
          duration: 200.ms,
          curve: Curves.easeOutBack,
        ),
      ],
      child: GestureDetector(
        onTap: () {
          context.go('/course/${course.id}');
        },
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF16243A),
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.18),
                blurRadius: 18,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 26,
                    height: 26,
                    child: Lottie.asset(
                      'assets/lottie/radar_mini.json',
                      fit: BoxFit.contain,
                      repeat: true,
                      animate: true,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.my_location, color: Colors.white24, size: 20);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                Center(
                  child: Builder(
                    builder: (context) {
                      if (course.imageUrl != null && course.imageUrl!.endsWith('.svg')) {
                        return SvgPicture.network(
                          course.imageUrl!,
                          height: 32,
                          placeholderBuilder: (context) => const Icon(Icons.flight, color: Colors.white24, size: 26),
                          errorBuilder: (context, error, stackTrace) => const Icon(Icons.flight, color: Colors.white24, size: 26),
                        );
                      } else if (course.imageUrl != null) {
                        return Image.network(
                          course.imageUrl!,
                          height: 32,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) => const Icon(Icons.flight, color: Colors.white24, size: 26),
                        );
                      } else {
                        return Lottie.asset(
                          'assets/lottie/plane_loop.json',
                          width: 32,
                          height: 32,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) => const Icon(Icons.flight, color: Colors.white24, size: 26),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  course.title,
                  style: GoogleFonts.barlowCondensed(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  course.airline,
                  style: GoogleFonts.barlowCondensed(
                    fontSize: 12,
                    color: const Color(0xFF00FF9D),
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFD147),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFD147).withOpacity(0.18),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Text(
                            '₺',
                            style: GoogleFonts.orbitron(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF051C35),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Text(
                            course.price.toStringAsFixed(0),
                            style: GoogleFonts.orbitron(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF051C35),
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (index == 0)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFF00FF9D).withOpacity(0.18),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Instructor Online',
                          style: GoogleFonts.inter(
                            fontSize: 11,
                            color: const Color(0xFF00FF9D),
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                ),
              ],
            ),
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