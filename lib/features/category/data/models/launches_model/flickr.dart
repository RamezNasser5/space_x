class Flickr {
  List<dynamic>? small;
  List<dynamic>? original;

  Flickr({this.small, this.original});

  factory Flickr.fromJson(Map<String, dynamic> json) => Flickr(
        small: json['small'] as List<dynamic>?,
        original: json['original'] as List<dynamic>?,
      );
}
