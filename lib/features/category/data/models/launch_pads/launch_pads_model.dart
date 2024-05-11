

import 'package:space_x/features/category/data/models/launch_pads/images.dart';

class LaunchPads {
  Images? images;
  String? name;
  String? fullName;
  String? locality;
  String? region;
  double? latitude;
  double? longitude;
  int? landingAttempts;
  int? landingSuccesses;
  List<String>? rockets;
  String? timezone;
  List<String>? launches;
  String? status;
  String? details;
  String? id;

  LaunchPads({
    this.images,
    this.name,
    this.fullName,
    this.locality,
    this.region,
    this.latitude,
    this.longitude,
    this.landingAttempts,
    this.landingSuccesses,
    this.rockets,
    this.timezone,
    this.launches,
    this.status,
    this.details,
    this.id,
  });

  factory LaunchPads.fromJson(Map<String, dynamic> json) {
    return LaunchPads(
      images: json["images"] == null ? null : Images.fromJson(json["images"]),
      name: json["name"],
      fullName: json["full_name"],
      locality: json["locality"],
      region: json["region"],
      latitude: json["latitude"]?.toDouble(),
      longitude: json["longitude"]?.toDouble(),
      landingAttempts: json["launch_attempts"],
      landingSuccesses: json["launch_successes"],
      rockets: json["rockets"] == null
          ? null
          : List<String>.from(json["rockets"].map((x) => x)),
      timezone: json["timezone"],
      launches: json["launches"] == null
          ? null
          : List<String>.from(json["launches"].map((x) => x)),
      status: json["status"],
      details: json["details"],
      id: json["id"],
    );
  }
}
