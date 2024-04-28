class HeightWTrunk {
  double? meters;
  double? feet;

  HeightWTrunk({this.meters, this.feet});

  factory HeightWTrunk.fromJson(Map<String, dynamic> json) => HeightWTrunk(
        meters: json["meters"]?.toDouble(),
        feet: json["feet"]?.toDouble(),
      );
}
