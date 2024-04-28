import 'package:space_x/features/category/data/models/dragons_model/thrust.dart';

class Thruster {
  String? type;
  int? amount;
  int? pods;
  String? fuel1;
  String? fuel2;
  int? isp;
  Thrust? thrust;

  Thruster({
    this.type,
    this.amount,
    this.pods,
    this.fuel1,
    this.fuel2,
    this.isp,
    this.thrust,
  });

  factory Thruster.fromJson(Map<String, dynamic> json) => Thruster(
        type: json["type"],
        amount: json["amount"],
        pods: json["pods"],
        fuel1: json["fuel_1"],
        fuel2: json["fuel_2"],
        isp: json["isp"],
        thrust: json["thrust"] == null ? null : Thrust.fromJson(json["thrust"]),
      );
}
