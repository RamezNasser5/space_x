import 'package:flutter/material.dart';
import 'package:space_x/features/overview/ui/widgets/head_guarters.dart';

class OverViewBody extends StatelessWidget {
  const OverViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xff271125),
            Color(0xff112227),
          ],
        ),
      ),
      child: const HeadQuarters(),
    );
  }
}
