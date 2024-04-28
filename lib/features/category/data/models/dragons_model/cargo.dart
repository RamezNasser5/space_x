class Cargo {
  int? solarArray;
  bool? unpressurizedCargo;

  Cargo({this.solarArray, this.unpressurizedCargo});

  factory Cargo.fromJson(Map<String, dynamic> json) => Cargo(
        solarArray: json["solar_array"],
        unpressurizedCargo: json["unpressurized_cargo"],
      );
}
