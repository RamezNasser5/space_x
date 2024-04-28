import 'package:flutter/material.dart';
import 'package:space_x/features/home/ui/widgets/custom_navigation_button.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryName});

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Card(
        color: const Color.fromARGB(255, 53, 9, 53),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 30.0),
                child: Text(
                  categoryName,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Positioned(
                right: 1,
                child: CustomNavigationButton(categoryName: categoryName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
