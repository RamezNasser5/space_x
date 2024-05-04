import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/features/category/ui/widgets/landpads_view_body.dart';

class LandPadsView extends StatelessWidget {
  const LandPadsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LandPads'),
        centerTitle: true,
        backgroundColor: linearPrimaryColor2,
      ),
      body: Container(
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
        child: const LandPadsViewBody(),
      ),
    );
  }
}
