part of 'crew_info_cubit.dart';

@immutable
sealed class CrewInfoState {}

final class CrewInfoInitial extends CrewInfoState {}

final class CrewInfoLoading extends CrewInfoState {}

final class CrewInfoSuccess extends CrewInfoState {
  final List<CrewInfo> crewInfo;

  CrewInfoSuccess({required this.crewInfo});
}

final class CrewInfoFailure extends CrewInfoState {
  final String message;

  CrewInfoFailure({required this.message});
}
