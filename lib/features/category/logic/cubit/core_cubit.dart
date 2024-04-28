import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/core/network/services_dio.dart';
import 'package:space_x/features/category/data/core_model/core_model.dart';

part 'core_state.dart';

class CoreCubit extends Cubit<CoreState> {
  CoreCubit() : super(CoreCubitInitial());

  List<CoreModel> cores = [];
  DioServices dio = DioServices();

  fetshAllCubits() async {
    emit(CoreCubitLoading());
    try {
      var data = await dio.get(endPoint: 'cores');
      for (var item in data) {
        cores.add(CoreModel.fromJson(item));
      }
    } catch (e) {
      emit(CoreCubitFailure(message: e.toString()));
    }
  }
}