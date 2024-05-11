import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/core/utils/styles.dart';
import 'package:space_x/features/overview/logic/campany_info/campany_info_cubit.dart';

class HeadQuarters extends StatelessWidget {
  const HeadQuarters({super.key});

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
                'assets/images/Space X Dragon.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 25),
              const Text(
                'Head Quarters',
                style: Style.titelStyle,
              ),
              Text(
                'name of state: ${state.companyInfo.headquarters!.state}',
              ),
              Text(
                'name of city: ${state.companyInfo.headquarters!.city}',
              ),
              Text(
                'name of address: ${state.companyInfo.headquarters!.address}',
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
