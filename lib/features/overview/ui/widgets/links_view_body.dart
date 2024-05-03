import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/features/overview/ui/widgets/custom_skip_button.dart';
import 'package:space_x/features/overview/ui/widgets/links_body.dart';

class LinksViewBody extends StatelessWidget {
  const LinksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                linearPrimaryColor1,
                linearPrimaryColor2,
              ],
            ),
          ),
          child: const LinksBody(),
        ),
        const Positioned(
          bottom: 20,
          left: 15,
          child: CustomSkipButton(),
        ),
      ],
    );
  }
}
