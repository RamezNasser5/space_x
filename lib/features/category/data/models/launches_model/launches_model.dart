import 'package:space_x/features/category/data/models/launches_model/core.dart';
import 'package:space_x/features/category/data/models/launches_model/failure.dart';
import 'package:space_x/features/category/data/models/launches_model/fairings.dart';
import 'package:space_x/features/overview/data/models/companyinfo_models/links.dart';

class LaunchesModel {
  Fairings? fairings;
  Links? links;
  DateTime? staticFireDateUtc;
  int? staticFireDateUnix;
  bool? net;
  int? window;
  String? rocket;
  bool? success;
  List<Failure>? failures;
  String? details;
  List<dynamic>? crew;
  List<dynamic>? ships;
  List<dynamic>? capsules;
  List<dynamic>? payloads;
  String? launchpad;
  int? flightNumber;
  String? name;
  DateTime? dateUtc;
  int? dateUnix;
  String? dateLocal;
  String? datePrecision;
  bool? upcoming;
  List<Core>? cores;
  bool? autoUpdate;
  bool? tbd;
  dynamic launchLibraryId;
  String? id;

  LaunchesModel({
    this.fairings,
    this.links,
    this.staticFireDateUtc,
    this.staticFireDateUnix,
    this.net,
    this.window,
    this.rocket,
    this.success,
    this.failures,
    this.details,
    this.crew,
    this.ships,
    this.capsules,
    this.payloads,
    this.launchpad,
    this.flightNumber,
    this.name,
    this.dateUtc,
    this.dateUnix,
    this.dateLocal,
    this.datePrecision,
    this.upcoming,
    this.cores,
    this.autoUpdate,
    this.tbd,
    this.launchLibraryId,
    this.id,
  });

  factory LaunchesModel.fromJson(Map<String, dynamic> json) => LaunchesModel(
        fairings: json['fairings'] == null
            ? null
            : Fairings.fromJson(json['fairings']),
        links: json['links'] == null ? null : Links.fromJson(json['links']),
        staticFireDateUtc: json['static_fire_date_utc'] == null
            ? null
            : DateTime.parse(json['static_fire_date_utc']),
        staticFireDateUnix: json['static_fire_date_unix'] as int?,
        net: json['net'] as bool?,
        window: json['window'] as int?,
        rocket: json['rocket'] as String?,
        success: json['success'] as bool?,
        failures: json['failures'] == null
            ? null
            : List<Failure>.from(
                json['failures'].map((x) => Failure.fromJson(x))),
        details: json['details'] as String?,
        crew: json['crew'] == null
            ? null
            : List<dynamic>.from(json['crew'].map((x) => x)),
        ships: json['ships'] == null
            ? null
            : List<dynamic>.from(json['ships'].map((x) => x)),
        capsules: json['capsules'] == null
            ? null
            : List<dynamic>.from(json['capsules'].map((x) => x)),
        payloads: json['payloads'] == null
            ? null
            : List<dynamic>.from(json['payloads'].map((x) => x)),
        launchpad: json['launchpad'] as String?,
        flightNumber: json['flight_number'] as int?,
        name: json['name'] as String?,
        dateUtc:
            json['date_utc'] == null ? null : DateTime.parse(json['date_utc']),
        dateUnix: json['date_unix'] as int?,
        dateLocal: json['date_local'] as String?,
        datePrecision: json['date_precision'] as String?,
        upcoming: json['upcoming'] as bool?,
        cores: json['cores'] == null
            ? null
            : List<Core>.from(json['cores'].map((x) => Core.fromJson(x))),
        autoUpdate: json['auto_update'] as bool?,
        tbd: json['tbd'] as bool?,
        launchLibraryId: json['launch_library_id'] as dynamic,
        id: json['id'] as String?,
      );
}
