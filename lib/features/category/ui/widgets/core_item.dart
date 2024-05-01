import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/core/widgets/custom_item.dart';
import 'package:space_x/features/category/data/models/core_model/core_model.dart';

class CoreItem extends StatelessWidget {
  const CoreItem({super.key, required this.coreModel});

  final CoreModel coreModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.85,
        decoration: BoxDecoration(
          color: btnColor.withOpacity(0.3),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            CustomItem(
              itemname: 'Block',
              itemvalue: coreModel.block.toString(),
            ),
            CustomItem(
              itemname: 'Reuse Count',
              itemvalue: coreModel.reuseCount.toString(),
            ),
            CustomItem(
              itemname: 'Rtls Attempts',
              itemvalue: coreModel.rtlsAttempts.toString(),
            ),
            CustomItem(
              itemname: 'Rtls Landings',
              itemvalue: coreModel.rtlsLandings.toString(),
            ),
            CustomItem(
              itemname: 'Asds Attempts',
              itemvalue: coreModel.asdsAttempts.toString(),
            ),
            CustomItem(
              itemname: 'Asds Landings',
              itemvalue: coreModel.asdsLandings.toString(),
            ),
            CustomItem(
              itemname: 'Last Update',
              itemvalue: coreModel.lastUpdate.toString(),
            ),
            CustomItem(
              itemname: 'Launches',
              itemvalue: coreModel.launches.toString(),
            ),
            CustomItem(
              itemname: 'Serial',
              itemvalue: coreModel.serial.toString(),
            ),
            CustomItem(
              itemname: 'Status',
              itemvalue: coreModel.status.toString(),
            ),
            CustomItem(
              itemname: 'ID',
              itemvalue: coreModel.id.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
