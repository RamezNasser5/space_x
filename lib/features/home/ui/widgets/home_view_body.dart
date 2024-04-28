import 'package:flutter/material.dart';
import 'package:space_x/features/home/ui/widgets/category_list_view.dart';
import 'package:space_x/features/home/ui/widgets/crew_list_view.dart';
import 'package:space_x/features/home/ui/widgets/custom_text_field.dart';

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
            icon: const Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 20),
                CustomTextField(),
                SizedBox(height: 20),
                CrewListView(),
                SizedBox(height: 20),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: CategoryListView(),
          ),
        ],
      ),
    );
  }
}
