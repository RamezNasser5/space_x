import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/data/models/payloads_model/payloads_model.dart';
import 'package:space_x/features/category/data/repo/category_repo/category_repo_impl.dart';

part 'payloads_state.dart';

class PayloadsCubit extends Cubit<PayloadsState> {
  PayloadsCubit() : super(PayloadsInitial());

  CategoryRepoImpl categoryRepoImpl = CategoryRepoImpl();

  fetchAllPayloads() async {
    emit(PayloadsLoading());

    var result = await categoryRepoImpl.getPayloads();

    result.fold((errorMessage) => emit(PayloadsFailure(message: errorMessage)),
        (payloads) => emit(PayloadsSuccess(payloads: payloads)));
  }
}
