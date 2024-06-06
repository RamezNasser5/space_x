import 'package:flutter/material.dart';
import 'package:space_x/core/utils/styles.dart';
import 'package:space_x/features/category/ui/widgets/launches/launches_view_body.dart';

class LaunchesView extends StatelessWidget {
  const LaunchesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Launches',
          style: Style.titelStyle,
        ),
        centerTitle: true,
      ),
      body: const LaunchesViewBody(),
    );
  }
}
