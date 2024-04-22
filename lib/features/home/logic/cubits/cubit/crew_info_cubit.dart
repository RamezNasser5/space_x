import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/core/network/services_dio.dart';
import 'package:space_x/features/home/data/models/crew_info/crew_info.dart';

part 'crew_info_state.dart';

class CrewInfoCubit extends Cubit<CrewInfoState> {
  CrewInfoCubit() : super(CrewInfoInitial());

  List<CrewInfo> crewInfo = [];
  DioServices dioServices = DioServices();

  Future<void> getCrewInfo() async {
    emit(CrewInfoLoading());
    try {
      Map<String, dynamic> data = await dioServices.get(endPoint: 'crew');
      for (var item in data['item']) {
        crewInfo.add(CrewInfo.fromJson(item));
      }
      emit(CrewInfoSuccess(crewInfo: crewInfo));
    } catch (e) {
      emit(CrewInfoFailure(message: e.toString()));
    }
  }
}
