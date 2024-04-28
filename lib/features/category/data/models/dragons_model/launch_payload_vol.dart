class LaunchPayloadVol {
  int? cubicMeters;
  int? cubicFeet;

  LaunchPayloadVol({this.cubicMeters, this.cubicFeet});

  factory LaunchPayloadVol.fromJson(Map<String, dynamic> json) =>
      LaunchPayloadVol(
        cubicMeters: json["cubic_meters"],
        cubicFeet: json["cubic_feet"],
      );
}
