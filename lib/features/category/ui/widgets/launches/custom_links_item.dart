import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/core/widgets/custom_item.dart';
import 'package:space_x/core/widgets/custom_link_item.dart';
import 'package:space_x/features/category/ui/widgets/launches/custom_images_links_display.dart';

class CustomLinksItem extends StatelessWidget {
  const CustomLinksItem({super.key});

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
          CustomImagesLinksDisplay(),
          CustomLinkItem(
            itemKey: 'webcast',
            itemValue: 'https://www.youtube.com/watch?v=0a_00nJ_Y88',
          ),
          CustomItem(
            itemname: 'youtube_id',
            itemvalue: '0a_00nJ_Y88',
          ),
          CustomLinkItem(
            itemKey: 'article',
            itemValue:
                'https://www.space.com/2196-spacex-inaugural-falcon-1-rocket-lost-launch.html',
          ),
          CustomLinkItem(
            itemKey: 'wikipedia',
            itemValue: 'https://en.wikipedia.org/wiki/DemoSat',
          ),
        ],
      ),
    );
  }
}
