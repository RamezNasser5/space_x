import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/features/category/ui/widgets/payload_list.dart';

class PayloadsView extends StatelessWidget {
  const PayloadsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payloads'),
        backgroundColor: linearPrimaryColor1,
        centerTitle: true,
      ),
      body: const PayloadList(),
    );
  }
}
