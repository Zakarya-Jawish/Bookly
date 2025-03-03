import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lanchCustomUrl(BuildContext context, String urL) async {
  Uri url = Uri.parse(urL);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Can\'t lunch $url')));
  }
}
