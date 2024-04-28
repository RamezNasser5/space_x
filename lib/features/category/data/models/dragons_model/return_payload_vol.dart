class ReturnPayloadVol {
  int? cubicMeters;
  int? cubicFeet;

  ReturnPayloadVol({this.cubicMeters, this.cubicFeet});

  factory ReturnPayloadVol.fromJson(Map<String, dynamic> json) =>
      ReturnPayloadVol(
        cubicMeters: json["cubic_meters"],
        cubicFeet: json["cubic_feet"],
      );
}
