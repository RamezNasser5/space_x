class Links {
  String? website;
  String? flickr;
  String? twitter;
  String? elonTwitter;

  Links({this.website, this.flickr, this.twitter, this.elonTwitter});

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        website: json['website'] as String?,
        flickr: json['flickr'] as String?,
        twitter: json['twitter'] as String?,
        elonTwitter: json['elon_twitter'] as String?,
      );
}
