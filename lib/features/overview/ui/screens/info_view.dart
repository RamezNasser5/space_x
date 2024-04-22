import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/home/ui/screens/home_view.dart';
import 'package:space_x/features/overview/logic/campany_info/campany_info_cubit.dart';
import 'package:space_x/features/overview/ui/widgets/info_view_body.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomeView();
                },
              ),
            );
          },
          child: const Icon(Icons.arrow_forward_ios),
        ),
        body: BlocProvider(
          create: (context) => CompanyInfoCubit()..getCampanyInfo(),
          child: const InfoViewBody(),
        ));
  }
}
