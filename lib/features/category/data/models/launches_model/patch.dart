class Patch {
  String? small;
  String? large;

  Patch({this.small, this.large});

  factory Patch.fromJson(Map<String, dynamic> json) => Patch(
        small: json['small'] as String?,
        large: json['large'] as String?,
      );
}
