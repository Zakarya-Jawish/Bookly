import 'package:bookly/core/extensions/context_ex.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class BoxAction extends StatelessWidget {
  const BoxAction({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(19),
      child: SizedBox(
        height: 55,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 53,
              width: context.width * 0.4,
              child: const CustomButton(
                color: Colors.white,
                text: 'Free',
                colorText: Colors.black,
              ),
            ),
            SizedBox(
              height: 53,
              width: context.width * 0.4,
              child: const CustomButton(
                color: Color(0xffEF8262),
                text: 'Free Preview',
                colorText: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
