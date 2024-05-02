import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/core/utils/styles.dart';
import 'package:space_x/features/home/data/models/crew_info/crew_info.dart';
import 'package:space_x/features/home/ui/widgets/details_container.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.crewInfo});

  final CrewInfo crewInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: linearPrimaryColor2,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: CircleAvatar(
                radius: 120,
                backgroundImage: NetworkImage(crewInfo.image!),
              ),
            ),
            Text(
              crewInfo.name!,
              style: Style.nameStyle,
            ),
            DetailesContainer(
              crewInfo: crewInfo,
            ),
          ],
        ),
      ),
    );
  }
}
