import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.itemname,
    required this.itemvalue,
  });

  final String itemname;
  final String itemvalue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        decoration: BoxDecoration(
            color: btnColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,
        width: 300,
        height: 50,
        child: Text('$itemname: $itemvalue',
            maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
