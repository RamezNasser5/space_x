import 'package:space_x/features/category/data/models/land_pads_model/images.dart';

class LandPadsModel {
  Images? images;
  String? name;
  String? fullName;
  String? status;
  String? type;
  String? locality;
  String? region;
  double? latitude;
  double? longitude;
  int? landingAttempts;
  int? landingSuccesses;
  String? wikipedia;
  String? details;
  List<String>? launches;
  String? id;

  LandPadsModel({
    this.images,
    this.name,
    this.fullName,
    this.status,
    this.type,
    this.locality,
    this.region,
    this.latitude,
    this.longitude,
    this.landingAttempts,
    this.landingSuccesses,
    this.wikipedia,
    this.details,
    this.launches,
    this.id,
  });

  factory LandPadsModel.fromJson(Map<String, dynamic> json) => LandPadsModel(
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
        name: json["name"],
        fullName: json["full_name"],
        status: json["status"],
        type: json["type"],
        locality: json["locality"],
        region: json["region"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        landingAttempts: json["landing_attempts"],
        landingSuccesses: json["landing_successes"],
        wikipedia: json["wikipedia"],
        details: json["details"],
        launches: json["launches"] == null
            ? null
            : List<String>.from(json["launches"].map((x) => x)),
        id: json["id"],
      );
}
