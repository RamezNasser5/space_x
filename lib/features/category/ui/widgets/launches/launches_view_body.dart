import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:space_x/features/category/ui/widgets/launches/custom_lunch_item.dart';

class LaunchesViewBody extends StatelessWidget {
  const LaunchesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomLaunceItem(),
    );
  }
}
