import 'package:flutter/material.dart';
import 'package:space_x/features/category/ui/widgets/launches/custom_failure_item.dart';

class CustomFailureItems extends StatelessWidget {
  const CustomFailureItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: CustomFailureItem(),
    );
  }
}
