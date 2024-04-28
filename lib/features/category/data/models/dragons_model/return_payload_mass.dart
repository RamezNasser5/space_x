class ReturnPayloadMass {
  int? kg;
  int? lb;

  ReturnPayloadMass({this.kg, this.lb});

  factory ReturnPayloadMass.fromJson(Map<String, dynamic> json) =>
      ReturnPayloadMass(
        kg: json["kg"],
        lb: json["lb"],
      );
}
