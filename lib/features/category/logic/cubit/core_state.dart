part of 'core_cubit.dart';

@immutable
sealed class CoreState {}

final class CoreCubitInitial extends CoreState {}

final class CoreCubitLoading extends CoreState {}

final class CoreCubitSuccess extends CoreState {
  final List<CoreModel> cores;

  CoreCubitSuccess({required this.cores});
}

final class CoreCubitFailure extends CoreState {
  final String message;

  CoreCubitFailure({required this.message});
}
