import 'package:flutter/material.dart';
import 'package:space_x/features/category/data/models/dragons_model/dragons_model.dart';

class DisplayDragonDetails extends StatelessWidget {
  const DisplayDragonDetails({super.key, required this.dragon});

  final DragonsModel dragon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Description:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(dragon.description ?? ''),
        const SizedBox(height: 20),
        const Text(
          'First Flight:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(dragon.firstFlight ?? ''),
        const SizedBox(height: 20),
        const Text(
          'Material:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(dragon.heatShield!.material ?? ''),
        const SizedBox(height: 20),
        const Text(
          'Dev Partner:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(dragon.heatShield!.devPartner ?? ''),
        const SizedBox(height: 20),
        const Text(
          'Temprture Degree:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(dragon.heatShield!.tempDegrees.toString()),
        const SizedBox(height: 20),
        const Text(
          'Size Meters:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(dragon.heatShield!.sizeMeters.toString()),
        const SizedBox(height: 20),
        const Text(
          'Launch Payload Mass KG:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(dragon.launchPayloadMass!.kg.toString()),
        const SizedBox(height: 20),
        const Text(
          'Launch Payload Vol Cubic Meters:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(dragon.launchPayloadVol!.cubicMeters.toString()),
      ],
    );
  }
}
