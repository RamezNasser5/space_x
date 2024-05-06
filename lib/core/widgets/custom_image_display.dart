import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImageDisplay extends StatelessWidget {
  const CustomImageDisplay({
    super.key,
    required this.image,
    required this.width,
    required this.height,
  });

  final String image;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
