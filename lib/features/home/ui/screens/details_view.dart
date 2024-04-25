import 'package:flutter/material.dart';
import 'package:space_x/features/home/data/models/crew_info/crew_info.dart';
import 'package:space_x/features/home/ui/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.crewInfo});

  final CrewInfo crewInfo;

  @override
  Widget build(BuildContext context) {
    return DetailsViewBody(
      crewInfo: crewInfo,
    );
  }
}
