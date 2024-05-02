import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/core/widgets/custom_item.dart';
import 'package:space_x/features/category/logic/cubits/dragon_cubit/dragon_cubit.dart';
import 'package:space_x/features/category/ui/views/dragon_details_view.dart';

class DragonsListView extends StatelessWidget {
  const DragonsListView({
    super.key,
    required this.state,
  });

  final DragonSuccess state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.dragons.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DragonDetailsView(dragon: state.dragons[index]),
                ));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: linearPrimaryColor2.withOpacity(0.9),
              ),
              child: Column(
                children: [
                  CustomItem(
                    itemname: 'Title',
                    itemvalue: state.dragons[index].name!,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      decoration: BoxDecoration(
                          color: linearPrimaryColor2.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      width: 400,
                      child: Text(
                        'Description: ${state.dragons[index].description}',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
