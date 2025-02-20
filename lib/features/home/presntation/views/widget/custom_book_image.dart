import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/extensions/context_ex.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.height * height,
      child: AspectRatio(
        aspectRatio: 1 / 1.5,
        child: Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(AssetsData.testImage),
              ),
              borderRadius: BorderRadius.circular(17)),
        ),
      ),
    );
  }
}
