import 'package:flutter/material.dart';
import 'package:space_x/features/category/ui/widgets/launches_view_body.dart';

class LaunchesView extends StatelessWidget {
  const LaunchesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LaunchesViewBody(),
    );
  }
}
