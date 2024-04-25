import 'package:flutter/material.dart';
import 'package:space_x/features/home/data/models/crew_info/crew_info.dart';

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
          Text(
            crewInfo.name!,
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            crewInfo.status!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            crewInfo.agency!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            crewInfo.wikipedia!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            crewInfo.id!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
