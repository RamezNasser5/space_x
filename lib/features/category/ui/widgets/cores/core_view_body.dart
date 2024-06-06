import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/features/category/ui/widgets/cores/core_list_view.dart';

class CoreViewBody extends StatelessWidget {
  const CoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: linearPrimaryColor1,
      appBar: AppBar(
        backgroundColor: linearPrimaryColor1,
        title: const Text('Cores Details'),
        centerTitle: true,
      ),
      body: const CoreListView(),
    );
  }
}
