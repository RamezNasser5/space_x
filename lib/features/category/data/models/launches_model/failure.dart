class Failure {
  int? time;
  dynamic altitude;
  String? reason;

  Failure({this.time, this.altitude, this.reason});

  factory Failure.fromJson(Map<String, dynamic> json) => Failure(
        time: json['time'] as int?,
        altitude: json['altitude'] as dynamic,
        reason: json['reason'] as String?,
      );
}
