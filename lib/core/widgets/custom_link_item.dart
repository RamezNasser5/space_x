import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomLinkItem extends StatelessWidget {
  const CustomLinkItem(
      {super.key, required this.itemValue, required this.itemKey});

  final String itemValue;
  final String itemKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        decoration: BoxDecoration(
            color: linearPrimaryColor2.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,
        width: 300,
        height: 50,
        child: GestureDetector(
          onTap: () async {
            final Uri url = Uri.parse(itemValue);

            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          child: Text(
            itemKey,
          ),
        ),
      ),
    );
  }
}
