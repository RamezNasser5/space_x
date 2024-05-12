import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/features/category/ui/widgets/landpads_view_body.dart';

import '../widgets/launch_pad/launch_pads_veiw_body.dart';

class LaunchPadView extends StatelessWidget {
  const LaunchPadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LaunchPads'),
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
        child: const LaunchPadsViewBody(),
      ),
    );
  }
}
