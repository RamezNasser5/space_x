import 'package:flutter/material.dart';
import 'package:space_x/core/widgets/custom_image_display.dart';

class DispalyImages extends StatelessWidget {
  const DispalyImages({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Images:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Column(
          children: images.map((image) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomImageDisplay(
                image: image,
                width: 400,
                height: 200,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
