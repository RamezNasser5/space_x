import 'package:flutter/material.dart';

import '../widgets/overview_body.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OverViewBody(),
    );
  }
}
