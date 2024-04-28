import 'package:flutter/material.dart';
import 'package:space_x/features/category/data/models/dragons_model/dragons_model.dart';
import 'package:space_x/features/category/ui/widgets/display_dragon_details.dart';
import 'package:space_x/features/category/ui/widgets/display_images.dart';

class DragonDetailsViewBody extends StatelessWidget {
  const DragonDetailsViewBody({super.key, required this.dragon});

  final DragonsModel dragon;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DisplayDragonDetails(dragon: dragon),
          const SizedBox(height: 20),
          DispalyImages(
            images: dragon.flickrImages!,
          )
        ],
      ),
    );
  }
}
