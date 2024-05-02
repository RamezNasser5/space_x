import 'package:flutter/material.dart';
import 'package:space_x/core/routing/app_router.dart';

void main() {
  runApp(const SpaceX());
}

class SpaceX extends StatelessWidget {
  const SpaceX({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routers,
    );
  }
}
