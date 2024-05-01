import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/const.dart';
import 'package:space_x/features/overview/logic/campany_info/campany_info_cubit.dart';

class InfoBody extends StatelessWidget {
  InfoBody({super.key});

  final List<String> items = [
    "Name",
    "founder",
    "founded",
    "employees",
    "vehicles",
    "Launch Sites",
    "testSites",
    "ceo",
    "cto",
    "coo",
    "ctoPropulsion",
    "Valuation",
    "Summary",
    "ID"
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyInfoCubit, CompanyInfoState>(
      builder: (context, state) {
        if (state is CompanyInfoFailure) {
          return Text(state.message);
        }
        if (state is CompanyInfoSuccess) {
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: 25),
                Container(
                  alignment: Alignment.center,
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                      color: btnColor, borderRadius: BorderRadius.circular(23)),
                  child: Text(
                    'Info Body',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final List<String> values = [
                          state.companyInfo.name!,
                          state.companyInfo.founder!,
                          state.companyInfo.founded!.toString(),
                          state.companyInfo.employees!.toString(),
                          state.companyInfo.vehicles!.toString(),
                          state.companyInfo.launchSites.toString(),
                          state.companyInfo.testSites.toString(),
                          state.companyInfo.ceo.toString(),
                          state.companyInfo.cto.toString(),
                          state.companyInfo.coo!,
                          state.companyInfo.ctoPropulsion!,
                          state.companyInfo.valuation.toString(),
                          state.companyInfo.summary!,
                          state.companyInfo.id!,
                        ];

                        return CustomItem(
                          itemname: items[index],
                          itemvalue: values[index],
                        );
                      }),
                )
              ],
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.itemname,
    required this.itemvalue,
  });

  final String itemname;
  final String itemvalue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        decoration: BoxDecoration(
            color: btnColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,
        width: 300,
        height: 50,
        child: Text('$itemname: $itemvalue',
            maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
