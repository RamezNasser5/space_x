import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:space_x/core/routing/app_router.dart';
import 'package:space_x/features/overview/ui/widgets/links_view_body.dart';

class LinksView extends StatelessWidget {
  const LinksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kInfoView);
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
      body: const LinksViewBody(),
    );
  }
}
