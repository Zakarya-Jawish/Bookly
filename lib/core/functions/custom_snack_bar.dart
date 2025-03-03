import 'package:flutter/material.dart';

void customSnackBar(BuildContext context, Uri url) {
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text('Can\'t lunch $url')));
}
