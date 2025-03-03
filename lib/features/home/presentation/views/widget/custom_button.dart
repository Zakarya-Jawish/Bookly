import 'package:bookly/core/extensions/context_ex.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.text,
    required this.colorText,
    required this.function,
  });
  final Color color;
  final Color colorText;
  final String text;
  final void Function()? function;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: color, shape: const RoundedRectangleBorder()),
      onPressed: function,
      child: Text(text,
          style: context.textTheme.bodyMedium!
              .copyWith(color: colorText, fontWeight: FontWeight.w700)),
    );
  }
}
