import 'package:flutter/material.dart';
import 'package:space_x/features/category/ui/views/core_view.dart';
import 'package:space_x/features/category/ui/views/dragon_view.dart';

class CustomNavigationButton extends StatelessWidget {
  const CustomNavigationButton({super.key, required this.categoryName});

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
          categoriesNavigaton(context);
        },
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );
  }

  void categoriesNavigaton(BuildContext context) {
    switch (categoryName) {
      case 'cores':
        {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const CoreView();
              },
            ),
          );
        }
        break;
      case 'dragons':
        {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const DragonView();
              },
            ),
          );
        }
        break;
      case 'landpads':
        {}
        break;
      case 'launches':
        {}
        break;
      case 'lanchpads':
        {}
        break;
      case 'payloads':
        {}
        break;
      case 'roadster':
        {}
        break;
      case 'rockets':
        {}
        break;
      case 'ships':
        {}
        break;
      case 'starlink':
        {}
        break;
    }
  }
}
