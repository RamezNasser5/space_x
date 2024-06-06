import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/core/widgets/custom_item.dart';

class CustomFailureItem extends StatelessWidget {
  const CustomFailureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: kSkipColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        children: [
          CustomItem(
            itemname: 'time',
            itemvalue: '33',
          ),
          CustomItem(
            itemname: 'altitude',
            itemvalue: 'null',
          ),
          CustomItem(
            itemname: 'reason',
            itemvalue: 'merlin engine failure',
          ),
        ],
      ),
    );
  }
}
