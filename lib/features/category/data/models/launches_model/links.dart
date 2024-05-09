import 'flickr.dart';
import 'patch.dart';
import 'reddit.dart';

class Links {
  Patch? patch;
  Reddit? reddit;
  Flickr? flickr;
  dynamic presskit;
  String? webcast;
  String? youtubeId;
  String? article;
  String? wikipedia;

  Links({
    this.patch,
    this.reddit,
    this.flickr,
    this.presskit,
    this.webcast,
    this.youtubeId,
    this.article,
    this.wikipedia,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        patch: json['patch'] == null ? null : Patch.fromJson(json['patch']),
        reddit: json['reddit'] == null ? null : Reddit.fromJson(json['reddit']),
        flickr: json['flickr'] == null ? null : Flickr.fromJson(json['flickr']),
        presskit: json['presskit'],
        webcast: json['webcast'],
        youtubeId: json['youtube_id'],
        article: json['article'],
        wikipedia: json['wikipedia'],
      );
}
