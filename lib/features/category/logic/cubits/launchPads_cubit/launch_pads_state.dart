part of 'launch_pads_cubit.dart';

@immutable
sealed class LaunchPadsState {}

final class LaunchPadsInitial extends LaunchPadsState {}
final class  LaunchPadsFailure extends LaunchPadsState {
  final String message;

  LaunchPadsFailure({required this.message});
}

final class  LaunchPadsLoading extends LaunchPadsState {}

final class  LaunchPadsSuccess extends LaunchPadsState {
  final List<LaunchPads> launches;

  LaunchPadsSuccess({required this.launches});
}