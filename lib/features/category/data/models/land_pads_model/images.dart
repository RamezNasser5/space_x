class Images {
  List<String>? large;

  Images({this.large});

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        large: json["large"] == null
            ? null
            : List<String>.from(json["large"].map((x) => x)),
      );
}
