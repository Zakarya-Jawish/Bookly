import 'package:bookly/core/extensions/context_ex.dart';
import 'package:bookly/core/widget/custom_circle_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: urlImage,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              placeholder: (context, url) => const CustomCircleIndicator(),
            ),
          )),
    );
  }
}
