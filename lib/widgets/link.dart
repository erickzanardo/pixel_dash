import 'package:flutter/material.dart';
import 'package:nes_ui/nes_ui.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Link extends StatelessWidget {
  const Link({
    required this.label,
    required this.link,
    super.key,
  });

  final String label;
  final String link;

  @override
  Widget build(BuildContext context) {
    return NesPressable(
      onPress: () => launchUrlString(link),
      child: Text(
        label,
        style: const TextStyle(color: Colors.blueAccent),
      ),
    );
  }
}
