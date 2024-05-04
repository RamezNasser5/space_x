import 'package:flutter/material.dart';
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
        itemCount: state.landPads.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.network(state.landPads[index].images!.large![0]),
              title: Text(state.landPads[index].name!),
              subtitle: Text('Status: ${state.landPads[index].status}\n'
                  'Locality: ${state.landPads[index].locality}\n'
                  'Region: ${state.landPads[index].region}\n'
                  'Attempts: ${state.landPads[index].landingAttempts}\n'
                  'Successes: ${state.landPads[index].landingSuccesses}'),
              onTap: () {
                launchUrl(Uri.parse(state.landPads[index].wikipedia!));
              },
            ),
          );
        });
  }
}
