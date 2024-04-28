class Diameter {
  double? meters;
  int? feet;

  Diameter({this.meters, this.feet});

  factory Diameter.fromJson(Map<String, dynamic> json) => Diameter(
        meters: json["meters"]?.toDouble(),
        feet: json["feet"],
      );
}
