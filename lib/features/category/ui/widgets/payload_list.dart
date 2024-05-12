import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/logic/cubits/payloads_cubit/payloads_cubit.dart';
import 'package:space_x/features/category/ui/widgets/payload_item.dart';

class PayloadList extends StatelessWidget {
  const PayloadList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayloadsCubit, PayloadsState>(builder: (_, state) {
      if (state is PayloadsSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.payloads.length,
            itemBuilder: (context, index) {
              return PayloadItem(payload: state.payloads[index]);
            },
          ),
        );
      }
      if (state is PayloadsFailure) {
        return Center(
          child: Text(state.message),
        );
      }
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
