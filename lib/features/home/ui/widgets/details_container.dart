import 'package:flutter/material.dart';
import 'package:space_x/features/home/data/models/crew_info/crew_info.dart';
import 'package:space_x/features/overview/ui/widgets/info_body.dart';

class DetailesContainer extends StatelessWidget {
  const DetailesContainer({
    super.key,
    required this.crewInfo,
  });
  final CrewInfo crewInfo;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xff112227),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(80))),
      width: double.infinity,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomItem(
            itemname: 'status',
            itemvalue: crewInfo.status!,
          ),
          CustomItem(
            itemname: 'agency',
            itemvalue: crewInfo.agency!,
          ),
          CustomItem(
            itemname: 'wikipedia',
            itemvalue: crewInfo.wikipedia!,
          ),
          CustomItem(itemname: 'ID', itemvalue: crewInfo.id!),
        ],
      ),
    );
  }
}
