import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tetangga_kita/screens/login_screen.dart';

void main() {
  Widget buildTestableWidget(Widget child) {
    return MaterialApp(
      home: child,
    );
  }

  group('LoginScreen Widget Tests', () {
    testWidgets('renders all essential login elements', (tester) async {
      await tester.pumpWidget(buildTestableWidget(const LoginScreen()));

      expect(find.text('Masuk ke TetanggaKita'), findsOneWidget);
      expect(find.byType(TextFormField), findsNWidgets(2));
      expect(find.text('Masuk'), findsOneWidget);
      expect(find.text('Hubungi RT'), findsOneWidget);
    });

    testWidgets('shows validation errors when fields are empty', (tester) async {
      await tester.pumpWidget(buildTestableWidget(const LoginScreen()));

      await tester.tap(find.text('Masuk'));
      await tester.pumpAndSettle();

      expect(find.text('Email atau NIK tidak boleh kosong'), findsOneWidget);
      expect(find.text('Kata sandi tidak boleh kosong'), findsOneWidget);
    });

    testWidgets('toggles password visibility icon when pressed', (tester) async {
      await tester.pumpWidget(buildTestableWidget(const LoginScreen()));

      expect(find.byIcon(Icons.visibility_off_outlined), findsOneWidget);

      await tester.tap(find.byIcon(Icons.visibility_off_outlined));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.visibility_outlined), findsOneWidget);
    });
  });
}
