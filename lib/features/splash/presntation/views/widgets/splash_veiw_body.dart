import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/extensions/context_ex.dart';
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
        Text(
          'Read Books For Free..',
          textAlign: TextAlign.center,
          style: context.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
