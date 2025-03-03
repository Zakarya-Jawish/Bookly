import 'package:bookly/core/extensions/context_ex.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_button.dart';

class BoxAction extends StatelessWidget {
  const BoxAction({super.key, required this.bookModel});
  final BookModel bookModel;
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
              child: CustomButton(
                color: Colors.white,
                text: 'Download',
                colorText: Colors.black,
                function: () async {
                  Uri url = Uri.parse(bookModel.accessInfo!.webReaderLink!);
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
              ),
            ),
            SizedBox(
              height: 53,
              width: context.width * 0.4,
              child: CustomButton(
                color: const Color(0xffEF8262),
                text: 'Preview',
                colorText: Colors.white,
                function: () async {
                  Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
