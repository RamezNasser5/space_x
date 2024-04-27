import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/home/logic/cubits/cubit/crew_info_cubit.dart';
import 'package:space_x/features/home/ui/widgets/crew_item.dart';

class CrewListView extends StatelessWidget {
  const CrewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CrewInfoCubit, CrewInfoState>(
      builder: (context, state) {
        if (state is CrewInfoSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: ListView.builder(
              itemCount: state.crewInfo.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CrewItem(
                  crewInfo: state.crewInfo[index],
                );
              },
            ),
          );
        } else if (state is CrewInfoFailure) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
