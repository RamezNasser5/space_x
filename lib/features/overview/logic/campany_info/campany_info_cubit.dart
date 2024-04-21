import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/core/network/services_dio.dart';
import 'package:space_x/features/overview/data/models/companyinfo_models/companyinfo.dart';

part 'campany_info_state.dart';

class CampanyInfoCubit extends Cubit<CampanyInfoState> {
  CampanyInfoCubit() : super(CampanyInfoInitial());

  DioServices dioServices = DioServices();

  Future<void> getCampanyInfo() async {
    emit(CampanyInfoLoading());
    try {
      Map<String, dynamic> data = await dioServices.get(endPoint: 'company');
      CompanyInfo companyInfo = CompanyInfo.fromJson(data);
      emit(CampanyInfoSuccess(companyInfo: companyInfo));
    } catch (e) {
      emit(CampanyInfoFailure(message: e.toString()));
    }
  }
}
