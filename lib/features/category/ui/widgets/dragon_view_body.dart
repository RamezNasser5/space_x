import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/logic/cubits/dragon_cubit/dragon_cubit.dart';
import 'package:space_x/features/category/ui/views/dragon_details_view.dart';

class DragonViewBody extends StatelessWidget {
  const DragonViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DragonCubit, DragonState>(
      builder: (context, state) {
        if (state is DragonSuccess) {
          return ListView.builder(
            itemCount: state.dragons.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.dragons[index].name ?? ''),
                subtitle: Text(state.dragons[index].description ?? ''),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DragonDetailsView(dragon: state.dragons[index]),
                    ),
                  );
                },
              );
            },
          );
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
