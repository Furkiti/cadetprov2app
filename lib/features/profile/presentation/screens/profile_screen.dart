import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../shared/widgets/aviation_app_bar.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_constants.dart';
import '../widgets/profile_menu_item.dart';
import '../widgets/achievement_badge.dart';
import 'package:provider/provider.dart';

/// Profile screen
class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F7),
      appBar: const AviationAppBar(
        title: 'Profilim',
        showBack: true,
        // logoAsset: 'assets/icons/thy_logo.svg', // Uncomment if you have a logo asset
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Profil Bilgilerim',
              style: GoogleFonts.barlow(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF0C2340),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            // Profile Header
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: AppTheme.thyRed,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: AppTheme.white,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Kullanıcı Adı',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'kullanici@email.com',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: AppTheme.gray600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Menu Items
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.school, color: AppTheme.thyRed),
                    title: const Text('Kurslarım'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to my courses
                    },
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.psychology, color: AppTheme.thyRed),
                    title: const Text('Test Sonuçlarım'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to test results
                    },
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.shopping_cart, color: AppTheme.thyRed),
                    title: const Text('Sepetim'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to cart
                    },
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Settings
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.settings, color: AppTheme.thyRed),
                    title: const Text('Ayarlar'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to settings
                    },
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.help, color: AppTheme.thyRed),
                    title: const Text('Yardım'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to help
                    },
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.info, color: AppTheme.thyRed),
                    title: const Text('Hakkında'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to about
                    },
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Logout Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  _showLogoutDialog();
                },
                icon: const Icon(Icons.logout),
                label: const Text('Çıkış Yap'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: const BorderSide(color: AppTheme.error),
                  foregroundColor: AppTheme.error,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _saveProfile,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFB400), // aviation yellow
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                textStyle: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                elevation: 2,
              ),
              child: const Text('Kaydet'),
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Çıkış Yap'),
        content: const Text('Hesabınızdan çıkış yapmak istediğinizden emin misiniz?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('İptal'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.go('/login');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.error,
              foregroundColor: AppTheme.white,
            ),
            child: const Text('Çıkış Yap'),
          ),
        ],
      ),
    );
  }

  void _saveProfile() {
    // TODO: Implement profile save logic
  }
} 