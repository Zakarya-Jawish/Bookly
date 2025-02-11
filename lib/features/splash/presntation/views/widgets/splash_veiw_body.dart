import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashVeiwBody extends StatelessWidget {
  const SplashVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsData.logo),
      ],
    );
  }
}
