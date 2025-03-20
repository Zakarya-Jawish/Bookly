import 'package:bookly/core/extensions/context_ex.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField(
      {super.key,
      required this.textEditingController,
      required this.onPressed});
  final void Function()? onPressed;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: context.textTheme.bodyMedium,
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: context.textTheme.bodyMedium,
        suffixIcon: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            )),
      ),
    );
  }
}
