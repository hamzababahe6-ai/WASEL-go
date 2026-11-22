import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WaselGoApp());
}

class WaselGoApp extends StatelessWidget {
  const WaselGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WASEL GO',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomeScreen(),
    );
  }
}
