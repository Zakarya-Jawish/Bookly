import 'package:bookly/extensions/context_ex.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 15,
        ),
        const Text('4.8'),
        Text(
          '(2939)',
          style: context.textTheme.bodySmall,
        )
      ],
    );
  }
}
