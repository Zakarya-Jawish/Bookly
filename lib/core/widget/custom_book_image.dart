import 'package:bookly/core/extensions/context_ex.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage(
      {super.key, required this.width, required this.urlImage});
  final double width;
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * width,
      child: AspectRatio(
        aspectRatio: 1 / 1.5,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(urlImage),
              ),
              borderRadius: BorderRadius.circular(17)),
        ),
      ),
    );
  }
}
