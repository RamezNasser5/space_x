part of 'payloads_cubit.dart';

@immutable
sealed class PayloadsState {}

final class PayloadsInitial extends PayloadsState {}

final class PayloadsFailure extends PayloadsState {
  final String message;

  PayloadsFailure({required this.message});
}

final class PayloadsLoading extends PayloadsState {}

final class PayloadsSuccess extends PayloadsState {
  final List<Payload> payloads;

  PayloadsSuccess({required this.payloads});
}
