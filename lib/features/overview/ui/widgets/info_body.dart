import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/overview/logic/campany_info/campany_info_cubit.dart';

class InfoBody extends StatelessWidget {
  const InfoBody({super.key});

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
              const SizedBox(height: 25),
              Text(
                'Info Body',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'name: ${state.companyInfo.name}',
              ),
              Text(
                'founder: ${state.companyInfo.founder}',
              ),
              Text(
                'founded: ${state.companyInfo.founded}',
              ),
              Text(
                'employees: ${state.companyInfo.employees}',
              ),
              Text(
                'vehicles: ${state.companyInfo.vehicles}',
              ),
              Text(
                'launchSites: ${state.companyInfo.launchSites}',
              ),
              Text(
                'testSites: ${state.companyInfo.testSites}',
              ),
              Text(
                'ceo: ${state.companyInfo.ceo}',
              ),
              Text(
                'coo: ${state.companyInfo.coo}',
              ),
              Text(
                'ctoPropulsion: ${state.companyInfo.ctoPropulsion}',
              ),
              Text(
                'valuation: ${state.companyInfo.valuation}',
              ),
              Text(
                'summary: ${state.companyInfo.summary}',
              ),
              Text(
                'id: ${state.companyInfo.id}',
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
