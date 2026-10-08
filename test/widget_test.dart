import 'package:flutter_test/flutter_test.dart';
import 'package:tetangga_kita/main.dart';

void main() {
  testWidgets('Splash screen smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const TetanggaKitaApp());
    expect(find.text('TETANGGA KITA'), findsOneWidget);
    await tester.pumpAndSettle(const Duration(seconds: 3));
    expect(find.text('Halaman Login'), findsOneWidget);
  });
}
