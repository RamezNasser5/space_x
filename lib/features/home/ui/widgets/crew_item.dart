import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:space_x/core/routing/app_router.dart';
import 'package:space_x/core/utils/styles.dart';
import 'package:space_x/core/widgets/custom_image_display.dart';
import 'package:space_x/features/home/data/models/crew_info/crew_info.dart';

class CrewItem extends StatelessWidget {
  const CrewItem({
    super.key,
    required this.crewInfo,
  });

  final CrewInfo crewInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0, left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              color: const Color(0xff542E45).withOpacity(0.5),
              spreadRadius: 0,
              offset: const Offset(10, 10),
            )
          ],
        ),
        width: 180,
        height: 120,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: 180,
              height: 120,
              child: GestureDetector(
                onTap: () => GoRouter.of(context)
                    .push(AppRouter.kDetailsView, extra: crewInfo),
                child: Card(
                  color: const Color(0xff112227),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          crewInfo.name!,
                          style: Style.nameStyle,
                        ),
                        Text(
                          crewInfo.agency!,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          crewInfo.status!,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 100,
              top: -35,
              child: CustomImageDisplay(
                  image: crewInfo.image!, width: 80, height: 80),
            ),
          ],
        ),
      ),
    );
  }
}
