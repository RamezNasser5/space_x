part of 'launches_cubit.dart';

@immutable
sealed class LaunchesState {}

final class LaunchesInitial extends LaunchesState {}

final class LaunchesFailure extends LaunchesState {
  final String message;

  LaunchesFailure({required this.message});
}

final class LaunchesLaoding extends LaunchesState {}

final class LaunchesSuccess extends LaunchesState {
  final List<LaunchesModel> launches;

  LaunchesSuccess({required this.launches});
}
