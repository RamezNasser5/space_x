import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/core/utils/styles.dart';
import 'package:space_x/core/widgets/custom_link_item.dart';
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
              const Text(
                'Links',
                style: Style.titelStyle,
              ),
              CustomLinkItem(
                  itemKey: 'link of elonTwitter',
                  itemValue: state.companyInfo.links!.elonTwitter!),
              CustomLinkItem(
                  itemKey: 'link of flickr',
                  itemValue: state.companyInfo.links!.flickr!),
              CustomLinkItem(
                  itemKey: 'link of twitter',
                  itemValue: state.companyInfo.links!.twitter!),
              CustomLinkItem(
                  itemKey: 'link of website',
                  itemValue: state.companyInfo.links!.website!),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
