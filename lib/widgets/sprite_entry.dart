import 'package:flutter/material.dart';
import 'package:nes_ui/nes_ui.dart';
import 'package:pixel_dash/l10n/l10n.dart';
import 'package:pixel_dash/widgets/link.dart';

class SpriteEntry extends StatelessWidget {
  const SpriteEntry({
    required this.label,
    required this.name,
    this.width = 180,
    this.height = 180,
    super.key,
  });

  final String label;
  final String name;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: NesContainer(
        child: Column(
          children: [
            SizedBox(
              width: width,
              height: height,
              child: Image.asset(
                'assets/renders/$name.png',
                fit: BoxFit.contain,
                filterQuality: FilterQuality.none,
              ),
            ),
            const SizedBox(height: 16),
            Text(label),
            const SizedBox(height: 16),
            Link(
              label: l10n.image,
              link:
                  'https://github.com/erickzanardo/pixel_dash/blob/main/assets/renders/$name.png',
            ),
            const SizedBox(height: 16),
            Link(
              label: l10n.source,
              link:
                  'https://github.com/erickzanardo/pixel_dash/blob/main/assets/sources/$name.aseprite',
            ),
          ],
        ),
      ),
    );
  }
}
