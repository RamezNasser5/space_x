import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/core/utils/styles.dart';
import 'package:space_x/core/widgets/custom_image_display.dart';

import '../../../logic/cubits/launchPads_cubit/launch_pads_cubit.dart';

class LaunchPadsListView extends StatelessWidget {
  const LaunchPadsListView({
    super.key,
    required this.state,
  });

  final LaunchPadsSuccess state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: state.launches.length,
        itemBuilder: (context, index) {
          return Card(
            color: linearPrimaryColor1,
            child: ListTile(
              leading: SizedBox(
                  height: 60,
                  width: 100,
                  child: CustomImageDisplay(
                    image: state.launches[index].images!.large![0],
                    width: 50,
                    height: 70,
                  )),
              title: Text(
                state.launches[index].name!,
                style: Style.nameStyle,
              ),
              subtitle: Text(
                'Status: ${state.launches[index].status}\n'
                'Locality: ${state.launches[index].locality}\n'
                'Region: ${state.launches[index].region}\n'
                'Attempts: ${state.launches[index].landingAttempts}\n'
                'Successes: ${state.launches[index].landingSuccesses}',
                style: Style.datatStyle,
              ),
              onTap: () {
                // launchUrl(Uri.parse(state.launches[index].wikipedia!));
              },
            ),
          );
        });
  }
}
