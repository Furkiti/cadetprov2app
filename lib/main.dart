import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/theme/app_theme.dart';
import 'core/constants/app_constants.dart';
import 'features/auth/presentation/screens/login_screen.dart';
import 'features/auth/presentation/screens/signup_screen.dart';
import 'features/courses/presentation/screens/home_screen.dart';
import 'features/courses/presentation/screens/course_detail_screen.dart';
import 'features/games/presentation/screens/game_screen.dart';
import 'features/profile/presentation/screens/profile_screen.dart';
import 'shared/widgets/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final lastRoute = prefs.getString('last_route');
  // Only restore if not splash/login/signup
  final initialLocation = (lastRoute != null &&
          !['/', '/login', '/signup'].contains(lastRoute))
      ? lastRoute
      : '/';
  runApp(
    ProviderScope(
      child: ThyCadetApp(initialLocation: initialLocation),
    ),
  );
}

/// Main application widget
class ThyCadetApp extends ConsumerWidget {
  final String initialLocation;
  const ThyCadetApp({super.key, required this.initialLocation});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system, // Will be controlled by provider later
      routerConfig: createRouter(initialLocation),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0),
          ),
          child: child!,
        );
      },
    );
  }
}

/// Route observer to save last route
class LastRouteObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    _saveRoute(route);
    super.didPush(route, previousRoute);
  }
  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    if (newRoute != null) _saveRoute(newRoute);
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
  void _saveRoute(Route route) async {
    final name = route.settings.name ?? '';
    if (name.isEmpty || name == '/' || name == '/login' || name == '/signup') return;
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('last_route', name);
  }
}

GoRouter createRouter(String initialLocation) {
  return GoRouter(
    initialLocation: initialLocation,
    observers: [LastRouteObserver()],
    routes: [
      GoRoute(
        path: '/',
        name: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        name: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        name: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/home',
        name: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/course/:id',
        name: '/course',
        builder: (context, state) {
          final courseId = state.pathParameters['id']!;
          return CourseDetailScreen(courseId: courseId);
        },
      ),
      GoRoute(
        path: '/game/:id',
        name: '/game',
        builder: (context, state) {
          final gameId = state.pathParameters['id']!;
          return GameScreen(gameId: gameId);
        },
      ),
      GoRoute(
        path: '/profile',
        name: '/profile',
        builder: (context, state) => const ProfileScreen(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(
        title: const Text('Hata'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Sayfa bulunamadı',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Aradığınız sayfa mevcut değil.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              child: const Text('Ana Sayfaya Dön'),
            ),
          ],
        ),
      ),
    ),
  );
}
