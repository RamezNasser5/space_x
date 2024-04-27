import 'package:flutter/material.dart';
import 'package:space_x/features/home/ui/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 120,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => const CategoryItem(),
      ),
    );
  }
}
