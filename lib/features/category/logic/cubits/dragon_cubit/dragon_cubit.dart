import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/core/network/services_dio.dart';
import 'package:space_x/features/category/data/models/dragons_model/dragons_model.dart';

part 'dragon_state.dart';

class DragonCubit extends Cubit<DragonState> {
  DragonCubit() : super(DragonInitial());

  DioServices dioServices = DioServices();
  List<DragonsModel> dragons = [];

  fetshAllDragons() {
    emit(DragonLoading());
    try {
      var data = dioServices.get(endPoint: 'dragons');
      for (var item in data) {
        dragons.add(DragonsModel.fromJson(item));
      }
      emit(DragonSuccess(dragons: dragons));
    } catch (e) {
      emit(DragonFailure(message: e.toString()));
    }
  }
}
