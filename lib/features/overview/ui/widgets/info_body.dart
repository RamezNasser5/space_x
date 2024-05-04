import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/core/helper/helper_class.dart';
import 'package:space_x/features/overview/logic/campany_info/campany_info_cubit.dart';
import 'package:space_x/features/overview/ui/widgets/info_body_list_view.dart';

class InfoBody extends StatelessWidget {
  InfoBody({super.key});

  final List<String> items = HelperClass().items;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyInfoCubit, CompanyInfoState>(
      builder: (context, state) {
        if (state is CompanyInfoFailure) {
          return Text(state.message);
        }
        if (state is CompanyInfoSuccess) {
          return InfoBodyListView(
            items: items,
            state: state,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
