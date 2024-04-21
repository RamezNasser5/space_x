import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/overview/logic/campany_info/campany_info_cubit.dart';
import 'package:space_x/features/overview/ui/widgets/links_view_body.dart';

class LinksView extends StatelessWidget {
  const LinksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const LinksView();
                },
              ),
            );
          },
          child: const Icon(Icons.arrow_forward_ios),
        ),
        body: BlocProvider(
          create: (context) => CompanyInfoCubit()..getCampanyInfo(),
          child: const LinksViewBody(),
        ));
  }
}
