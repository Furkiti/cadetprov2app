/// Application Constants
class AppConstants {
  // App Information
  static const String appName = 'My Cadet';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'Cadet Program Mobile Application';
  
  // API Endpoints (Future use)
  static const String baseUrl = 'https://api.mycadet.com';
  static const String apiVersion = '/v1';
  
  // Firebase Collections
  static const String usersCollection = 'users';
  static const String coursesCollection = 'courses';
  static const String testResultsCollection = 'test_results';
  static const String progressCollection = 'progress';
  
  // Storage Paths
  static const String profileImagesPath = 'profile_images';
  static const String courseImagesPath = 'course_images';
  static const String gameAssetsPath = 'game_assets';
  
  // Shared Preferences Keys
  static const String isDarkModeKey = 'is_dark_mode';
  static const String userTokenKey = 'user_token';
  static const String userIdKey = 'user_id';
  static const String userEmailKey = 'user_email';
  static const String userProfileKey = 'user_profile';
  static const String cartItemsKey = 'cart_items';
  static const String languageKey = 'language';
  
  // Animation Durations
  static const Duration shortAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 300);
  static const Duration longAnimation = Duration(milliseconds: 500);
  
  // Game Constants
  static const int maxGameTime = 300; // 5 minutes in seconds
  static const int minGameTime = 30; // 30 seconds minimum
  static const double minSuccessRate = 0.6; // 60% minimum success rate
  
  // Course Categories
  static const List<String> airlineCategories = [
    'THY',
    'Pegasus',
    'SunExpress',
    'All Courses',
  ];
  
  // THY Cadet Program Steps
  static const List<String> thyCadetSteps = [
    'Online İngilizce Sınavı',
    'Psikometrik Test Değerlendirmeleri',
    'Yetkinlik Değerlendirmesi',
    'İK ve İş Birimi Teknik Değerlendirmesi',
    'İşe Giriş Muayenesi',
  ];
  
  // Psychometric Test Modules
  static const List<String> psychometricModules = [
    'Sürdürülebilir Dikkat Testi',
    'Görsel-İşitsel Bellek',
    '3D Uzamsal Algı',
    'Psikomotor Koordinasyon',
    'Mantık ve Akıl Yürütme',
    'Hızlı Karar Verme',
  ];
  
  // Error Messages
  static const String networkError = 'İnternet bağlantısı hatası';
  static const String authError = 'Kimlik doğrulama hatası';
  static const String generalError = 'Bir hata oluştu';
  static const String invalidEmail = 'Geçersiz e-posta adresi';
  static const String weakPassword = 'Şifre çok zayıf';
  static const String emailInUse = 'Bu e-posta adresi zaten kullanımda';
  static const String userNotFound = 'Kullanıcı bulunamadı';
  static const String wrongPassword = 'Yanlış şifre';
  
  // Success Messages
  static const String loginSuccess = 'Başarıyla giriş yapıldı';
  static const String signupSuccess = 'Hesap başarıyla oluşturuldu';
  static const String logoutSuccess = 'Başarıyla çıkış yapıldı';
  static const String profileUpdated = 'Profil güncellendi';
  static const String courseAdded = 'Kurs sepete eklendi';
  static const String testCompleted = 'Test tamamlandı';
  
  // Validation Rules
  static const int minPasswordLength = 6;
  static const int maxPasswordLength = 50;
  static const int minNameLength = 2;
  static const int maxNameLength = 50;
  
  // UI Constants
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;
  static const double defaultRadius = 8.0;
  static const double largeRadius = 12.0;
  static const double iconSize = 24.0;
  static const double smallIconSize = 16.0;
  static const double largeIconSize = 32.0;
  
  // Breakpoints
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 900;
  static const double desktopBreakpoint = 1200;
  
  // Game Scores
  static const int perfectScore = 100;
  static const int excellentScore = 90;
  static const int goodScore = 80;
  static const int averageScore = 70;
  static const int belowAverageScore = 60;
  static const int poorScore = 50;
} 