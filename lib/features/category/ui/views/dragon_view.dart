import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/logic/cubits/dragon_cubit/dragon_cubit.dart';
import 'package:space_x/features/category/ui/widgets/dragon_view_body.dart';

class DragonView extends StatelessWidget {
  const DragonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dragons'),
        centerTitle: true,
        backgroundColor: const Color(0xff112227),
      ),
      body: BlocProvider(
        create: (context) => DragonCubit()..fetshAllDragons(),
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xff271125),
                  Color(0xff112227),
                ],
              ),
            ),
            child: const DragonViewBody()),
      ),
    );
  }
}
