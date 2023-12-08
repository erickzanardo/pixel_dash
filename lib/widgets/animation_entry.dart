import 'package:flame/widgets.dart';
import 'package:flutter/material.dart';
import 'package:nes_ui/nes_ui.dart';
import 'package:pixel_dash/l10n/l10n.dart';
import 'package:pixel_dash/widgets/link.dart';

class AnimationEntry extends StatelessWidget {
  const AnimationEntry({
    required this.label,
    required this.name,
    required this.animationData,
    this.width = 180,
    this.height = 180,
    super.key,
  });

  final String label;
  final String name;
  final SpriteAnimationData animationData;
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
              child: SpriteAnimationWidget.asset(
                path: 'assets/renders/$name.png',
                data: animationData,
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
