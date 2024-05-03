import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:space_x/core/routing/app_router.dart';
import 'package:space_x/features/overview/ui/widgets/info_view_body.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => GoRouter.of(context).push(AppRouter.kHomeView),
        child: const Icon(Icons.arrow_forward_ios),
      ),
      body: const InfoViewBody(),
    );
  }
}
