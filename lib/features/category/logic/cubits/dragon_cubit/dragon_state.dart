part of 'dragon_cubit.dart';

@immutable
sealed class DragonState {}

final class DragonInitial extends DragonState {}

final class DragonLoading extends DragonState {}

final class DragonSuccess extends DragonState {
  final List<DragonsModel> dragons;

  DragonSuccess({required this.dragons});
}

final class DragonFailure extends DragonState {
  final String message;

  DragonFailure({required this.message});
}
