import 'package:flutter/material.dart';
import 'package:space_x/features/splach/ui/screens/splach_view.dart';

void main() {
  runApp(const SpaceX());
}

class SpaceX extends StatelessWidget {
  const SpaceX({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachView(),
    );
  }
}