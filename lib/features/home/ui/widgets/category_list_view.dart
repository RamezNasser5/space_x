import 'package:flutter/material.dart';
import 'package:space_x/core/helper/helper_class.dart';
import 'package:space_x/features/home/ui/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});

  final List<String> categories = HelperClass().categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          crossAxisCount: 2,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => CategoryItem(
          categoryName: categories[index],
        ),
      ),
    );
  }
}
