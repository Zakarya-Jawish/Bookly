import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'sliding_text.dart';

class SplashVeiwBody extends StatefulWidget {
  const SplashVeiwBody({super.key});

  @override
  State<SplashVeiwBody> createState() => _SplashVeiwBodyState();
}

class _SplashVeiwBodyState extends State<SplashVeiwBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 4),
      end: Offset.zero,
    ).animate(
      animationController,
    );
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}
