import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/logic/cubits/launchPads_cubit/launch_pads_cubit.dart';

import 'launch_pads_list_view.dart';

class LaunchPadsViewBody extends StatelessWidget {
  const LaunchPadsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LaunchPadsCubit, LaunchPadsState>(
      builder: (context, state) {
        if (state is LaunchPadsSuccess) {
          return LaunchPadsListView(state: state);
        } else if (state is LaunchPadsFailure) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
