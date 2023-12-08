import 'package:flame/flame.dart';
import 'package:pixel_dash/app/app.dart';
import 'package:pixel_dash/bootstrap.dart';

void main() {
  Flame.images.prefix = '';
  bootstrap(() => const App());
}
