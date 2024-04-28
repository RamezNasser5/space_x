import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/logic/cubits/core_cubit/core_cubit.dart';
import 'package:space_x/features/category/ui/widgets/core_view_body.dart';

class CoreView extends StatelessWidget {
  const CoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => CoreCubit()..fetshAllCores(),
        child: const CoreViewBody(),
      ),
    );
  }
}
