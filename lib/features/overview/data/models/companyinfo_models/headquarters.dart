class Headquarters {
  String? address;
  String? city;
  String? state;

  Headquarters({this.address, this.city, this.state});

  factory Headquarters.fromJson(Map<String, dynamic> json) => Headquarters(
        address: json['address'] as String?,
        city: json['city'] as String?,
        state: json['state'] as String?,
      );
}
