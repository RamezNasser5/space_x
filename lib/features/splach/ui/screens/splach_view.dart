import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/features/splach/ui/widgets/logo.dart';

class SplachView extends StatelessWidget {
  const SplachView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
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
        child: const Logo(),
      ),
    );
  }
}
