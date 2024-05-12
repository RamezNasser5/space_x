class Dragon {
  String? capsule;
  dynamic massInKg;
  dynamic massInLbs;
  dynamic flightTimeInSec;
  String? manifest;
  bool? waterLanding;
  bool? landLanding;

  Dragon({
    this.capsule,
    this.massInKg,
    this.massInLbs,
    this.flightTimeInSec,
    this.manifest,
    this.waterLanding,
    this.landLanding,
  });

  factory Dragon.fromJson(Map<String, dynamic> json) {
    return Dragon(
      capsule: json['capsule'],
      massInKg: json['mass_returned_kg'],
      massInLbs: json['mass_returned_lbs'],
      flightTimeInSec: json['flight_time_sec'],
      manifest: json['manifest'],
      waterLanding: json['water_landing'] ?? json['water_landing'],
      landLanding: json['land_landing'] ?? json['land_landing'],
    );
  }
}
