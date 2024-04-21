part of 'campany_info_cubit.dart';

@immutable
sealed class CampanyInfoState {}

final class CampanyInfoInitial extends CampanyInfoState {}

final class CampanyInfoSuccess extends CampanyInfoState {
  final CompanyInfo companyInfo;

  CampanyInfoSuccess({required this.companyInfo});
}

final class CampanyInfoLoading extends CampanyInfoState {}

final class CampanyInfoFailure extends CampanyInfoState {
  final String message;

  CampanyInfoFailure({required this.message});
}
