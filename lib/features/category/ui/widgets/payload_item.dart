import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/core/widgets/custom_item.dart';
import 'package:space_x/features/category/data/models/payloads_model/payloads_model.dart';
import 'package:url_launcher/url_launcher.dart';

class PayloadItem extends StatelessWidget {
  final Payload payload;

  const PayloadItem({super.key, required this.payload});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: linearPrimaryColor2.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            if(payload.dragon?.capsule != null)
            CustomItem(
              itemname: 'Dragon Capsule',
              itemvalue: payload.dragon!.capsule!,
            ),
            if(payload.dragon?.massInKg != null)
            CustomItem(
              itemname: 'Dragon Mass In Kg',
              itemvalue: payload.dragon!.massInKg!.toString(),
            ),
            if(payload.dragon?.massInLbs != null)
            CustomItem(
              itemname: 'Dragon Mass In Lbs',
              itemvalue: payload.dragon!.massInLbs!.toString(),
            ),
            if(payload.dragon?.flightTimeInSec != null)
            CustomItem(
              itemname: 'Dragon Flight Time In Sec.',
              itemvalue: payload.dragon!.flightTimeInSec!.toString(),
            ),
            if(payload.dragon?.manifest != null)
              InkWell(
                onTap: () => launchUrl(Uri.parse(payload.dragon!.manifest!)),
                child: const Row(
                  children: [
                    Text('Dragon Manifest'),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_outward_rounded),
                  ],
                ),
              ),
            if(payload.dragon?.waterLanding != null)
            CustomItem(
              itemname: 'Dragon water landing',
              itemvalue: payload.dragon!.waterLanding!.toString(),
            ),
            if(payload.dragon?.landLanding != null)
            CustomItem(
              itemname: 'Dragon land landing',
              itemvalue: payload.dragon!.landLanding!.toString(),
            ),
            if(payload.name != null)
            CustomItem(
              itemname: 'Name',
              itemvalue: payload.name!,
            ),
            if(payload.type != null)
            CustomItem(
              itemname: 'Type',
              itemvalue: payload.type!,
            ),
            if(payload.reused != null)
            CustomItem(
              itemname: 'reused',
              itemvalue: payload.reused!.toString(),
            ),
            if(payload.launch != null)
            CustomItem(
              itemname: 'launch',
              itemvalue: payload.launch!,
            ),
            if(payload.customers != null)
              CustomItem(
                itemname: 'customers',
                itemvalue: payload.customers!.join('\n'),
              ),
            if(payload.noradIds != null)
              CustomItem(
                itemname: 'Norad Ids',
                itemvalue: payload.noradIds!.join('\n'),
              ),
            if(payload.nationalities != null)
              CustomItem(
                itemname: 'Nationalities',
                itemvalue: payload.nationalities!.join('\n'),
              ),
            if(payload.manufacturers != null)
              CustomItem(
                itemname: 'manufactures',
                itemvalue: payload.manufacturers!.join('\n'),
              ),
            if(payload.massInKg != null)
              CustomItem(
                itemname: 'Mass in kg',
                itemvalue: payload.massInKg!.toString(),
              ),
            if(payload.massInLbs != null)
              CustomItem(
                itemname: 'Mass in lbs',
                itemvalue: payload.massInLbs!.toString(),
              ),
            if(payload.orbit != null)
              CustomItem(
                itemname: 'orbit',
                itemvalue: payload.orbit!,
              ),
            if(payload.referenceSystem != null)
              CustomItem(
                itemname: 'reference system',
                itemvalue: payload.referenceSystem!,
              ),
            if(payload.regime != null)
              CustomItem(
                itemname: 'regime',
                itemvalue: payload.regime!,
              ),
            if(payload.longitude != null)
              CustomItem(
                itemname: 'Longitude',
                itemvalue: payload.longitude!.toString(),
              ),
            if(payload.semiMajorAxisKm != null)
              CustomItem(
                itemname: 'semi major axis',
                itemvalue: payload.semiMajorAxisKm!.toString(),
              ),
            if(payload.eccentricity != null)
              CustomItem(
                itemname: 'eccentricity',
                itemvalue: payload.eccentricity!.toString(),
              ),
            if(payload.periapsisKm != null)
              CustomItem(
                itemname: 'periapsis km',
                itemvalue: payload.periapsisKm!.toString(),
              ),
            if(payload.apoapsisKm != null)
              CustomItem(
                itemname: 'apoapsis km',
                itemvalue: payload.apoapsisKm!.toString(),
              ),
            if(payload.inclinationDeg != null)
              CustomItem(
                itemname: 'Inclination deg',
                itemvalue: payload.inclinationDeg!.toString(),
              ),
            if(payload.periodMin != null)
              CustomItem(
                itemname: 'period min',
                itemvalue: payload.periodMin!.toString(),
              ),
            if(payload.lifespanYears != null)
              CustomItem(
                itemname: 'life span years',
                itemvalue: payload.lifespanYears!.toString(),
              ),
            if(payload.epoch != null)
              CustomItem(
                itemname: 'epoch',
                itemvalue: payload.epoch!,
              ),
            if(payload.meanMotion != null)
              CustomItem(
                itemname: 'Mean Motion',
                itemvalue: payload.meanMotion!.toString(),
              ),
            if(payload.raan != null)
              CustomItem(
                itemname: 'raan',
                itemvalue: payload.raan!.toString(),
              ),
            if(payload.argOfPericenter != null)
              CustomItem(
                itemname: 'arg of pericenter',
                itemvalue: payload.argOfPericenter!.toString(),
              ),
            if(payload.meanAnomaly != null)
              CustomItem(
                itemname: 'Mean Anomaly',
                itemvalue: payload.meanAnomaly!.toString(),
              ),
            if(payload.id != null)
              CustomItem(
                itemname: 'id',
                itemvalue: payload.id!,
              ),
          ],
        ),
      ),
    );
  }
}
