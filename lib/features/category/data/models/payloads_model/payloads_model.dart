import 'package:space_x/features/category/data/models/payloads_model/dragon.dart';

class Payload {
  Dragon? dragon;
  String? name;
  String? type;
  bool? reused;
  String? launch;
  List<String>? customers;
  List<dynamic>? noradIds;
  List<String>? nationalities;
  List<String>? manufacturers;
  dynamic massInKg;
  dynamic massInLbs;
  String? orbit;
  String? referenceSystem;
  String? regime;
  dynamic longitude;
  dynamic semiMajorAxisKm;
  dynamic eccentricity;
  dynamic periapsisKm;
  dynamic apoapsisKm;
  dynamic inclinationDeg;
  dynamic periodMin;
  dynamic lifespanYears;
  String? epoch;
  dynamic meanMotion;
  dynamic raan;
  dynamic argOfPericenter;
  dynamic meanAnomaly;
  String? id;

  Payload({
    this.dragon,
    this.name,
    this.type,
    this.reused,
    this.launch,
    this.customers,
    this.noradIds,
    this.nationalities,
    this.manufacturers,
    this.massInKg,
    this.massInLbs,
    this.orbit,
    this.referenceSystem,
    this.regime,
    this.longitude,
    this.semiMajorAxisKm,
    this.eccentricity,
    this.periapsisKm,
    this.apoapsisKm,
    this.inclinationDeg,
    this.periodMin,
    this.lifespanYears,
    this.epoch,
    this.meanMotion,
    this.raan,
    this.argOfPericenter,
    this.meanAnomaly,
    this.id,
  });

  factory Payload.fromJson(Map<String, dynamic> json) {
    return Payload(
      dragon: json["dragons"],
      name: json["name"],
      type: json["type"],
      reused: json["reused"],
      launch: json["launch"],
      customers: json["customers"] == null
          ? null
          : List<String>.from(json['customers'].map((x) => x)),
      noradIds: json["noradIds"] == null
          ? null
          : List<int>.from(json['noradIds'].map((x) => x)),
      nationalities: json["nationalities"] == null
          ? null
          : List<String>.from(json['nationalities'].map((x) => x)),
      manufacturers: json["manufacturers"] == null
          ? null
          : List<String>.from(json['manufacturers'].map((x) => x)),
      massInKg: json["mass_kg"],
      massInLbs: json["mass_lbs"],
      orbit: json["orbit"],
      referenceSystem: json["reference_system"],
      regime: json["regime"],
      longitude: json["longitude"],
      semiMajorAxisKm: json["semi_major_axis_km"],
      eccentricity: json["eccentricity"],
      periapsisKm: json["periapsis_km"],
      apoapsisKm: json["apoapsis_km"],
      inclinationDeg: json["inclination_deg"],
      periodMin: json["period_min"],
      lifespanYears: json["lifespan_years"],
      epoch: json["epoch"],
      meanMotion: json["mean_motion"],
      raan: json["raan"],
      argOfPericenter: json["arg_of_pericenter"],
      meanAnomaly: json["mean_anomaly"],
      id: json["id"],
    );
  }
}
