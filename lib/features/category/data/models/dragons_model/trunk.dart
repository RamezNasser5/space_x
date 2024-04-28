import 'package:space_x/features/category/data/models/dragons_model/cargo.dart';
import 'package:space_x/features/category/data/models/dragons_model/trunk_volume.dart';

class Trunk {
  TrunkVolume? trunkVolume;
  Cargo? cargo;

  Trunk({this.trunkVolume, this.cargo});

  factory Trunk.fromJson(Map<String, dynamic> json) => Trunk(
        trunkVolume: json["trunk_volume"] == null
            ? null
            : TrunkVolume.fromJson(json["trunk_volume"]),
        cargo: json["cargo"] == null ? null : Cargo.fromJson(json["cargo"]),
      );
}
