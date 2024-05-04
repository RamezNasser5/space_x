part of 'land_pads_cubit.dart';

@immutable
sealed class LandPadsState {}

final class LandPadsInitial extends LandPadsState {}

final class LandPadsLoading extends LandPadsState {}

final class LandPadsFailure extends LandPadsState {
  final String message;

  LandPadsFailure({required this.message});
}

final class LandPadsSuccess extends LandPadsState {
  final List<LandPadsModel> landPads;

  LandPadsSuccess({required this.landPads});
}
