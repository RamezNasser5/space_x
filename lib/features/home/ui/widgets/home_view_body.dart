import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/home/logic/cubits/cubit/crew_info_cubit.dart';
import 'package:space_x/features/home/ui/widgets/crew_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff271125),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('SpaceX'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_sharp),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 25),
          SizedBox(
            height: 140,
            child: Expanded(
              child: BlocBuilder<CrewInfoCubit, CrewInfoState>(
                builder: (context, state) {
                  if (state is CrewInfoSuccess) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.crewInfo.length,
                      itemBuilder: (context, index) {
                        return CrewItem(crewInfo: state.crewInfo[index]);
                      },
                    );
                  } else if (state is CrewInfoFailure) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
