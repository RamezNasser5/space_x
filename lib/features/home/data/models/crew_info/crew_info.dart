class CrewInfo {
  String? name;
  String? agency;
  String? image;
  String? wikipedia;
  List<String>? launches;
  String? status;
  String? id;

  CrewInfo({
    this.name,
    this.agency,
    this.image,
    this.wikipedia,
    this.launches,
    this.status,
    this.id,
  });

  factory CrewInfo.fromJson(Map<String, dynamic> json) => CrewInfo(
        name: json['name'] as String?,
        agency: json['agency'] as String?,
        image: json['image'] as String?,
        wikipedia: json['wikipedia'] as String?,
        launches: (json['launches'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
        status: json['status'] as String?,
        id: json['id'] as String?,
      );
}
