part of 'campany_info_cubit.dart';

@immutable
sealed class CompanyInfoState {}

final class CompanyInfoInitial extends CompanyInfoState {}

final class CompanyInfoSuccess extends CompanyInfoState {
  final CompanyInfo companyInfo;

  CompanyInfoSuccess({required this.companyInfo});
}

final class CompanyInfoLoading extends CompanyInfoState {}

final class CompanyInfoFailure extends CompanyInfoState {
  final String message;

  CompanyInfoFailure({required this.message});
}
