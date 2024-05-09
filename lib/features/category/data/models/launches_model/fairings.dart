class Fairings {
  bool? reused;
  bool? recoveryAttempt;
  bool? recovered;
  List<dynamic>? ships;

  Fairings({this.reused, this.recoveryAttempt, this.recovered, this.ships});

  factory Fairings.fromJson(Map<String, dynamic> json) => Fairings(
        reused: json['reused'] as bool?,
        recoveryAttempt: json['recovery_attempt'] as bool?,
        recovered: json['recovered'] as bool?,
        ships: json['ships'] as List<dynamic>?,
      );
}
