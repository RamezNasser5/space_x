import 'package:flutter/material.dart';

class CustomNavigationButton extends StatelessWidget {
  const CustomNavigationButton({super.key});

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
        onTap: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
