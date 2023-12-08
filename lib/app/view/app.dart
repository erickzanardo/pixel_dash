import 'package:flutter/material.dart';
import 'package:nes_ui/nes_ui.dart';
import 'package:pixel_dash/home/view/home_page.dart';
import 'package:pixel_dash/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: flutterNesTheme(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
