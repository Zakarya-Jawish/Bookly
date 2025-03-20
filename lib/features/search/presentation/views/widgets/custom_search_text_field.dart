import 'package:bookly/core/extensions/context_ex.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField(
      {super.key,
      required this.textEditingController,
      required this.onPressed});
  final TextEditingController textEditingController;
  final void Function()? onPressed;

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: context.textTheme.bodyMedium,
        suffixIcon: IconButton(
            onPressed: widget.onPressed,
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            )),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.textEditingController.dispose();
  }
}
