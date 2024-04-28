class TrunkVolume {
  int? cubicMeters;
  int? cubicFeet;

  TrunkVolume({this.cubicMeters, this.cubicFeet});

  factory TrunkVolume.fromJson(Map<String, dynamic> json) => TrunkVolume(
        cubicMeters: json["cubic_meters"],
        cubicFeet: json["cubic_feet"],
      );
}
