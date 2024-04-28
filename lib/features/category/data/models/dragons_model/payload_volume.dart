class PayloadVolume {
  int? cubicMeters;
  int? cubicFeet;

  PayloadVolume({this.cubicMeters, this.cubicFeet});

  factory PayloadVolume.fromJson(Map<String, dynamic> json) => PayloadVolume(
        cubicMeters: json["cubic_meters"],
        cubicFeet: json["cubic_feet"],
      );
}
