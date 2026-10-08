import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const TetanggaKitaApp());
}

class TetanggaKitaApp extends StatelessWidget {
  const TetanggaKitaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TetanggaKita',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F5A54),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Scaffold(
          body: Center(child: Text('Halaman Login')),
        ),
      },
    );
  }
}
