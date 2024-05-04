import 'package:flutter/material.dart';
import 'package:space_x/core/helper/helper_class.dart';

class CustomNavigationButton extends StatelessWidget {
  const CustomNavigationButton({
    super.key,
    required this.categoryName,
  });

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 42,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomRight: Radius.circular(15),
        ),
        color: Color.fromARGB(255, 20, 85, 60),
      ),
      child: GestureDetector(
        onTap: () {
          HelperClass().categoriesNavigaton(context, categoryName);
        },
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
