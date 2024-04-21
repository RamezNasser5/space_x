import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/core/network/services_dio.dart';
import 'package:space_x/features/overview/data/models/companyinfo_models/companyinfo.dart';

part 'campany_info_state.dart';

class CompanyInfoCubit extends Cubit<CompanyInfoState> {
  CompanyInfoCubit() : super(CompanyInfoInitial());

  DioServices dioServices = DioServices();

  Future<void> getCampanyInfo() async {
    emit(CompanyInfoLoading());
    try {
      Map<String, dynamic> data = await dioServices.get(endPoint: 'company');
      CompanyInfo companyInfo = CompanyInfo.fromJson(data);
      emit(CompanyInfoSuccess(companyInfo: companyInfo));
    } catch (e) {
      emit(CompanyInfoFailure(message: e.toString()));
    }
  }
}
