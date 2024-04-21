import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SpaceXLogo extends StatelessWidget {
  const SpaceXLogo({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'images/$name.svg',
      height: 30,
    );
  }
}
