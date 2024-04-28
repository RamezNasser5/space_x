import 'package:flutter/material.dart';

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
              child: Image.network(image),
            );
          }).toList(),
        ),
      ],
    );
  }
}
