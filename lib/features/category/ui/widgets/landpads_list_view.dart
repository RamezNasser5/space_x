import 'package:flutter/material.dart';
import 'package:space_x/core/utils/const.dart';
import 'package:space_x/core/utils/styles.dart';
import 'package:space_x/core/widgets/custom_image_display.dart';
import 'package:space_x/features/category/logic/cubits/landpads_cubit/land_pads_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class LandPadsListView extends StatelessWidget {
  const LandPadsListView({
    super.key,
    required this.state,
  });

  final LandPadsSuccess state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: state.landPads.length,
        itemBuilder: (context, index) {
          return Card(
            color: linearPrimaryColor1,
            child: ListTile(
              leading: SizedBox(
                  height: 60,
                  width: 100,
                  child: CustomImageDisplay(
                    image: state.landPads[index].images!.large![0],
                    width: 50,
                    height: 70,
                  )),
              title: Text(
                state.landPads[index].name!,
                style: Style.nameStyle,
              ),
              subtitle: Text(
                'Status: ${state.landPads[index].status}\n'
                'Locality: ${state.landPads[index].locality}\n'
                'Region: ${state.landPads[index].region}\n'
                'Attempts: ${state.landPads[index].landingAttempts}\n'
                'Successes: ${state.landPads[index].landingSuccesses}',
                style: Style.datatStyle,
              ),
              onTap: () {
                launchUrl(Uri.parse(state.landPads[index].wikipedia!));
              },
            ),
          );
        });
  }
}
