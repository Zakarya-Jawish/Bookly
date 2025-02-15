import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashVeiwBody extends StatelessWidget {
  const SplashVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const Text(
          'Read Books For Free..',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
