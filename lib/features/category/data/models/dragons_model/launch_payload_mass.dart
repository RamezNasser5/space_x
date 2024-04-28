class LaunchPayloadMass {
  int? kg;
  int? lb;

  LaunchPayloadMass({this.kg, this.lb});

  factory LaunchPayloadMass.fromJson(Map<String, dynamic> json) =>
      LaunchPayloadMass(
        kg: json["kg"],
        lb: json["lb"],
      );
}
