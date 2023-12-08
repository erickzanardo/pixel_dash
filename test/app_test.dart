// ignore_for_file: prefer_const_constructors

import 'package:flame/flame.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pixel_dash/app/view/app.dart';

void main() {
  Flame.images.prefix = '';
  testWidgets('renders', (tester) async {
    await tester.pumpWidget(App());
    expect(find.byType(App), findsOneWidget);
  });
}
