import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'role_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                const Icon(Icons.directions_car_filled, size: 88, color: AppTheme.navy),
                const SizedBox(height: 18),
                const Text('واصل GO', textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: AppTheme.navy)),
                const SizedBox(height: 8),
                const Text('واصل إلى وجهتك… بأمان وذكاء',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.black54)),
                const Spacer(),
                const Text('اختر طريقة الدخول', textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                const SizedBox(height: 18),
                _RoleButton(icon: Icons.person, label: 'أنا عميل', onTap: () => _open(context, 'العميل')),
                const SizedBox(height: 12),
                _RoleButton(icon: Icons.drive_eta, label: 'أنا سائق', onTap: () => _open(context, 'السائق')),
                const SizedBox(height: 12),
                _RoleButton(icon: Icons.admin_panel_settings, label: 'الإدارة', onTap: () => _open(context, 'الإدارة')),
                const Spacer(),
                const Text('نواكشوط • موريتانيا', textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black45)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _open(BuildContext context, String role) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => RoleScreen(role: role)));
  }
}

class _RoleButton extends StatelessWidget {
  const _RoleButton({required this.icon, required this.label, required this.onTap});
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => ElevatedButton.icon(
    onPressed: onTap, icon: Icon(icon), label: Text(label, style: const TextStyle(fontSize: 17)),
  );
}
