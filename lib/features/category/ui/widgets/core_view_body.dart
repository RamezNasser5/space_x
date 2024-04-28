import 'package:flutter/material.dart';
import 'package:space_x/features/category/ui/widgets/core_list_view.dart';

class CoreViewBody extends StatelessWidget {
  const CoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores Details'),
        centerTitle: true,
      ),
      body: const CoreListView(),
    );
  }
}
