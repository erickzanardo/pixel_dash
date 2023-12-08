import 'package:flame/extensions.dart';
import 'package:flame/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nes_ui/nes_ui.dart';
import 'package:pixel_dash/home/home.dart';
import 'package:pixel_dash/l10n/l10n.dart';
import 'package:pixel_dash/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: NesContainer(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    Text(
                      l10n.pixelDash,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Image.asset('assets/renders/nes_ui.png'),
                    Text(
                      l10n.headline,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    const Divider(),
                    const SizedBox(height: 16),
                    Text(
                      l10n.about,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      l10n.aboutText,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    const SizedBox(height: 32),
                    Text(
                      l10n.license,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      l10n.support,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    const SizedBox(height: 16),
                    const Link(
                      link: 'https://github.com/sponsors/erickzanardo',
                      label: 'GitHub Sponsors',
                    ),
                    const SizedBox(height: 16),
                    const Link(
                      link: 'https://ko-fi.com/cherrybitstudios',
                      label: 'Ko-fi',
                    ),
                    const SizedBox(height: 16),
                    Text(
                      l10n.nesUiCall,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    const SizedBox(height: 16),
                    const Link(
                      link: 'https://github.com/erickzanardo/nes_ui',
                      label: 'NesUI',
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),
                    Wrap(
                      children: [
                        const SpriteEntry(
                          label: 'Nes UI',
                          name: 'nes_ui',
                        ),
                        const SpriteEntry(
                          label: 'Dash',
                          name: 'dash',
                        ),
                        const SpriteEntry(
                          label: 'Falling',
                          name: 'dash_falling',
                        ),
                        const SpriteEntry(
                          label: 'Jumping',
                          name: 'dash_jumping',
                        ),
                        AnimationEntry(
                          label: 'Running',
                          name: 'dash_running',
                          animationData: SpriteAnimationData.sequenced(
                            amount: 4,
                            stepTime: .2,
                            textureSize: Vector2.all(16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
