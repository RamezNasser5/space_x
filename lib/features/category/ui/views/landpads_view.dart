import 'package:flutter/material.dart';
import 'package:space_x/features/category/ui/widgets/landpads_view_body.dart';

class LandPadsView extends StatelessWidget {
  const LandPadsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LandPads'),
        centerTitle: true,
      ),
      body: const LandPadsViewBody(),
    );
  }
}
