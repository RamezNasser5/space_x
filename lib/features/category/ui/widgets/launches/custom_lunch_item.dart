import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/core/utils/styles.dart';
import 'package:space_x/core/widgets/custom_item.dart';
import 'package:space_x/features/category/ui/widgets/launches/custom_failure_items.dart';
import 'package:space_x/features/category/ui/widgets/launches/custom_links_item.dart';

class CustomLaunceItem extends StatelessWidget {
  const CustomLaunceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: kSkipColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 280.0),
                  child: Text(
                    'Links',
                    style: Style.nameStyle.copyWith(fontSize: 25),
                  ),
                ),
                const SizedBox(height: 10),
                const CustomLinksItem(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 280.0),
                  child: Text(
                    'Failures',
                    style: Style.nameStyle.copyWith(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 10),
                const CustomFailureItems(),
                const SizedBox(height: 20),
                const CustomItem(
                  itemname: 'static_fire_date_utc',
                  itemvalue: '2006-03-17T00:00:00.000Z',
                ),
                const CustomItem(
                  itemname: 'static_fire_date_unix',
                  itemvalue: '1142553600',
                ),
                const CustomItem(
                  itemname: 'rocket',
                  itemvalue: '5e9d0d95eda69955f709d1eb',
                ),
                const CustomItem(
                  itemname: 'success',
                  itemvalue: 'false',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
