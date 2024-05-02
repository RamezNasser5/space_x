import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:space_x/core/routing/app_router.dart';
import '../widgets/overview_body.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => GoRouter.of(context).push(AppRouter.kLinksView),
        child: const Icon(Icons.arrow_forward_ios),
      ),
      body: const OverViewBody(),
    );
  }
}
