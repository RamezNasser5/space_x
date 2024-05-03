import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:space_x/core/routing/app_router.dart';
import 'package:space_x/core/utils/const.dart';

class CustomSkipButton extends StatelessWidget {
  const CustomSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => kSkipColor,
        ),
        fixedSize: const MaterialStatePropertyAll(
          Size(100, 50),
        ),
      ),
      onPressed: () => GoRouter.of(context).push(AppRouter.kHomeView),
      child: const Text('Skip'),
    );
  }
}
