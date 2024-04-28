import 'diameter.dart';
import 'heat_shield.dart';
import 'height_w_trunk.dart';
import 'launch_payload_mass.dart';
import 'launch_payload_vol.dart';
import 'pressurized_capsule.dart';
import 'return_payload_mass.dart';
import 'return_payload_vol.dart';
import 'thruster.dart';
import 'trunk.dart';

class DragonsModel {
  HeatShield? heatShield;
  LaunchPayloadMass? launchPayloadMass;
  LaunchPayloadVol? launchPayloadVol;
  ReturnPayloadMass? returnPayloadMass;
  ReturnPayloadVol? returnPayloadVol;
  PressurizedCapsule? pressurizedCapsule;
  Trunk? trunk;
  HeightWTrunk? heightWTrunk;
  Diameter? diameter;
  String? firstFlight;
  List<String>? flickrImages;
  String? name;
  String? type;
  bool? active;
  int? crewCapacity;
  int? sidewallAngleDeg;
  int? orbitDurationYr;
  int? dryMassKg;
  int? dryMassLb;
  List<Thruster>? thrusters;
  String? wikipedia;
  String? description;
  String? id;

  DragonsModel({
    this.heatShield,
    this.launchPayloadMass,
    this.launchPayloadVol,
    this.returnPayloadMass,
    this.returnPayloadVol,
    this.pressurizedCapsule,
    this.trunk,
    this.heightWTrunk,
    this.diameter,
    this.firstFlight,
    this.flickrImages,
    this.name,
    this.type,
    this.active,
    this.crewCapacity,
    this.sidewallAngleDeg,
    this.orbitDurationYr,
    this.dryMassKg,
    this.dryMassLb,
    this.thrusters,
    this.wikipedia,
    this.description,
    this.id,
  });

  factory DragonsModel.fromJson(Map<String, dynamic> json) => DragonsModel(
        heatShield: json["heat_shield"] == null
            ? null
            : HeatShield.fromJson(json["heat_shield"]),
        launchPayloadMass: json["launch_payload_mass"] == null
            ? null
            : LaunchPayloadMass.fromJson(json["launch_payload_mass"]),
        launchPayloadVol: json["launch_payload_vol"] == null
            ? null
            : LaunchPayloadVol.fromJson(json["launch_payload_vol"]),
        returnPayloadMass: json["return_payload_mass"] == null
            ? null
            : ReturnPayloadMass.fromJson(json["return_payload_mass"]),
        returnPayloadVol: json["return_payload_vol"] == null
            ? null
            : ReturnPayloadVol.fromJson(json["return_payload_vol"]),
        pressurizedCapsule: json["pressurized_capsule"] == null
            ? null
            : PressurizedCapsule.fromJson(json["pressurized_capsule"]),
        trunk: json["trunk"] == null ? null : Trunk.fromJson(json["trunk"]),
        heightWTrunk: json["height_w_trunk"] == null
            ? null
            : HeightWTrunk.fromJson(json["height_w_trunk"]),
        diameter: json["diameter"] == null
            ? null
            : Diameter.fromJson(json["diameter"]),
        firstFlight: json["first_flight"],
        flickrImages: json["flickr_images"] == null
            ? null
            : List<String>.from(json["flickr_images"].map((x) => x)),
        name: json["name"],
        type: json["type"],
        active: json["active"],
        crewCapacity: json["crew_capacity"],
        sidewallAngleDeg: json["sidewall_angle_deg"],
        orbitDurationYr: json["orbit_duration_yr"],
        dryMassKg: json["dry_mass_kg"],
        dryMassLb: json["dry_mass_lb"],
        thrusters: json["thrusters"] == null
            ? null
            : List<Thruster>.from(
                json["thrusters"].map((x) => Thruster.fromJson(x))),
        wikipedia: json["wikipedia"],
        description: json["description"],
        id: json["id"],
      );
}
