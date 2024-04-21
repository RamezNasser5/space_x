import 'package:flutter/material.dart';
import 'package:space_x/features/splach/ui/widgets/spacex_logo.dart';

class SpaceXRow extends StatelessWidget {
  const SpaceXRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 600,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpaceXLogo(name: 'S'),
          SpaceXLogo(name: 'P'),
          SpaceXLogo(name: 'A'),
          SpaceXLogo(name: 'C'),
          SpaceXLogo(name: 'E'),
          SpaceXLogo(name: 'X'),
        ],
      ),
    );
  }
}
