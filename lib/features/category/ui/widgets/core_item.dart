import 'package:flutter/material.dart';
import 'package:space_x/features/category/data/models/core_model/core_model.dart';

class CoreItem extends StatelessWidget {
  const CoreItem({super.key, required this.coreModel});

  final CoreModel coreModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Text(coreModel.block.toString()),
            Text(coreModel.reuseCount.toString()),
            Text(coreModel.rtlsAttempts.toString()),
            Text(coreModel.rtlsLandings.toString()),
            Text(coreModel.asdsAttempts.toString()),
            Text(coreModel.asdsLandings.toString()),
            Text(coreModel.lastUpdate.toString()),
            Text(coreModel.launches.toString()),
            Text(coreModel.serial.toString()),
            Text(coreModel.status.toString()),
            Text(coreModel.id.toString()),
          ],
        ),
      ),
    );
  }
}
