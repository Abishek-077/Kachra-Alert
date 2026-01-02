import 'package:flutter/material.dart';
import 'package:kachra_alert/screens/dashboard_screen.dart';
import 'package:kachra_alert/screens/splash_screen.dart';
import 'package:kachra_alert/screens/onboarding_screen.dart';
import 'package:kachra_alert/screens/login_screen.dart';
import 'package:kachra_alert/screens/signup_screen.dart';
import 'package:kachra_alert/app_state.dart';
import 'package:kachra_alert/widget/change_notifier_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      notifier: AppState(),
      child: const KacharaAlertApp(),
    ),
  );
}

class KacharaAlertApp extends StatelessWidget {
  const KacharaAlertApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KacharaAlert',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF2DD4BF),
        scaffoldBackgroundColor: const Color(0xFFF0FDF9),
        fontFamily: 'Inter',
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
