import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/overview/logic/campany_info/campany_info_cubit.dart';

class LinksBody extends StatelessWidget {
  const LinksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyInfoCubit, CompanyInfoState>(
      builder: (context, state) {
        if (state is CompanyInfoFailure) {
          return Text(state.message);
        }
        if (state is CompanyInfoSuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/Space X Dragon.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 25),
              Text(
                'Links',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'link of elonTwitter: ${state.companyInfo.links!.elonTwitter}',
              ),
              Text(
                'link of flickr: ${state.companyInfo.links!.flickr}',
              ),
              Text(
                'link of twitter: ${state.companyInfo.links!.twitter}',
              ),
              Text(
                'link of website: ${state.companyInfo.links!.website}',
              ),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
