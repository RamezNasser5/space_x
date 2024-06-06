import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/logic/cubits/core_cubit/core_cubit.dart';
import 'package:space_x/features/category/ui/widgets/cores/core_item.dart';

class CoreListView extends StatelessWidget {
  const CoreListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreCubit, CoreState>(
      builder: (context, state) {
        if (state is CoreCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.cores.length,
              itemBuilder: (context, index) {
                return CoreItem(
                  coreModel: state.cores[index],
                );
              },
            ),
          );
        } else if (state is CoreCubitFailure) {
          return Text(state.message);
        } else if (state is CoreCubitLoading) {
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
