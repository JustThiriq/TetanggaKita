import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
    const LoginScreen({super.key});

    @override
    State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.grey[50],
            body: SafeArea(
                child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            const SizedBox(height: 24),
                            Container(
                                width: 56,
                                height: 56,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF0F5A54),
                                    borderRadius: BorderRadius.circular(16),
                                ),
                                child: const Icon(
                                    Icons.holiday_village_rounded,
                                    color: Colors.white,
                                    size: 32,
                                ),
                            ),
                            const SizedBox(height: 24),
                            const Text(
                                'Masuk ke TetanggaKita',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1E293B),
                                ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                                'Kelola administrasi, iuran kas, dan informasi lingkungan warga.',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                    height: 1.4,
                                ),
                            ),
                            const SizedBox(height: 32),
                        ],
                    ),
                ),
            ),
        );
    }
}
