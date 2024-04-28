import 'package:space_x/features/category/data/models/dragons_model/payload_volume.dart';

class PressurizedCapsule {
  PayloadVolume? payloadVolume;

  PressurizedCapsule({this.payloadVolume});

  factory PressurizedCapsule.fromJson(Map<String, dynamic> json) =>
      PressurizedCapsule(
        payloadVolume: json["payload_volume"] == null
            ? null
            : PayloadVolume.fromJson(json["payload_volume"]),
      );
}
