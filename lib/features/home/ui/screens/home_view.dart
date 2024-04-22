import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/home/logic/cubits/cubit/crew_info_cubit.dart';
import 'package:space_x/features/home/ui/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CrewInfoCubit()..getCrewInfo(),
      child: const HomeViewBody(),
    );
  }
}
