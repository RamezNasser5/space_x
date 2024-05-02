import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/features/category/data/models/dragons_model/dragons_model.dart';
import 'package:space_x/features/category/ui/widgets/dragon_details_view_body.dart';

class DragonDetailsView extends StatelessWidget {
  const DragonDetailsView({super.key, required this.dragon});

  final DragonsModel dragon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(dragon.name ?? ''),
          backgroundColor: linearPrimaryColor2,
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                linearPrimaryColor1,
                linearPrimaryColor2,
              ],
            ),
          ),
          child: DragonDetailsViewBody(
            dragon: dragon,
          ),
        ));
  }
}
