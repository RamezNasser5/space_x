class HeatShield {
  String? material;
  double? sizeMeters;
  int? tempDegrees;
  String? devPartner;

  HeatShield({
    this.material,
    this.sizeMeters,
    this.tempDegrees,
    this.devPartner,
  });

  factory HeatShield.fromJson(Map<String, dynamic> json) => HeatShield(
        material: json["material"],
        sizeMeters: json["size_meters"]?.toDouble(),
        tempDegrees: json["temp_degrees"],
        devPartner: json["dev_partner"],
      );
}
