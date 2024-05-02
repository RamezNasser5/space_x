import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/logic/cubits/dragon_cubit/dragon_cubit.dart';
import 'package:space_x/features/category/ui/widgets/dragon_list_view.dart';

class DragonViewBody extends StatelessWidget {
  const DragonViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DragonCubit, DragonState>(
      builder: (context, state) {
        if (state is DragonSuccess) {
          return DragonsListView(state: state);
        } else if (state is DragonFailure) {
          return Text(state.message);
        } else if (state is DragonLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(
            child: Text('Center'),
          );
        }
      },
    );
  }
}
