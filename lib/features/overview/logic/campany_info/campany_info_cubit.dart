import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/overview/data/models/companyinfo_models/companyinfo.dart';
import 'package:space_x/features/overview/data/repo/company_info_repo/company_info_repo_impl.dart';

part 'campany_info_state.dart';

class CompanyInfoCubit extends Cubit<CompanyInfoState> {
  CompanyInfoCubit() : super(CompanyInfoInitial());

  CompanyInfoRepoImpl companyInfoRepoImpl = CompanyInfoRepoImpl();

  Future<void> getCampanyInfo() async {
    emit(CompanyInfoLoading());
    var result = await companyInfoRepoImpl.getCampanyInfo();
    result.fold(
      (errorMessage) => emit(CompanyInfoFailure(message: errorMessage)),
      (companyInfo) => emit(CompanyInfoSuccess(companyInfo: companyInfo)),
    );
  }
}
