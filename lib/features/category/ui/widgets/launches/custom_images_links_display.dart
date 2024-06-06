import 'package:flutter/material.dart';
import 'package:space_x/core/widgets/custom_image_display.dart';

class CustomImagesLinksDisplay extends StatelessWidget {
  const CustomImagesLinksDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomImageDisplay(
          image: 'https://images2.imgbox.com/94/f2/NN6Ph45r_o.png',
          width: 120,
          height: 160,
        ),
        CustomImageDisplay(
          image: 'https://images2.imgbox.com/5b/02/QcxHUb5V_o.png',
          width: 140,
          height: 180,
        ),
      ],
    );
  }
}
