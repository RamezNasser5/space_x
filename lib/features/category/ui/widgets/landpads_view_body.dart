import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/logic/cubits/landpads_cubit/land_pads_cubit.dart';
import 'package:space_x/features/category/ui/widgets/landpads_list_view.dart';

class LandPadsViewBody extends StatelessWidget {
  const LandPadsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandPadsCubit, LandPadsState>(
      builder: (context, state) {
        if (state is LandPadsSuccess) {
          return LandPadsListView(state: state);
        } else if (state is LandPadsFailure) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
