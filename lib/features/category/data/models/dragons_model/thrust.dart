class Thrust {
  double? kN;
  int? lbf;

  Thrust({this.kN, this.lbf});

  factory Thrust.fromJson(Map<String, dynamic> json) => Thrust(
        kN: json["kN"]?.toDouble(),
        lbf: json["lbf"],
      );
}
