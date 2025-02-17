import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/extensions/context_ex.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.height * 0.17,
      child: AspectRatio(
        aspectRatio: 1 / 1.5,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: AssetImage(AssetsData.testImage),
              ),
              borderRadius: BorderRadius.circular(17)),
        ),
      ),
    );
  }
}
