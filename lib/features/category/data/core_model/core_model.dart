class CoreModel {
  dynamic block;
  int? reuseCount;
  int? rtlsAttempts;
  int? rtlsLandings;
  int? asdsAttempts;
  int? asdsLandings;
  String? lastUpdate;
  List<String>? launches;
  String? serial;
  String? status;
  String? id;

  CoreModel({
    this.block,
    this.reuseCount,
    this.rtlsAttempts,
    this.rtlsLandings,
    this.asdsAttempts,
    this.asdsLandings,
    this.lastUpdate,
    this.launches,
    this.serial,
    this.status,
    this.id,
  });

  factory CoreModel.fromJson(Map<String, dynamic> json) => CoreModel(
        block: json["block"],
        reuseCount: json["reuse_count"],
        rtlsAttempts: json["rtls_attempts"],
        rtlsLandings: json["rtls_landings"],
        asdsAttempts: json["asds_attempts"],
        asdsLandings: json["asds_landings"],
        lastUpdate: json["last_update"],
        launches: json["launches"] == null
            ? null
            : List<String>.from(json["launches"].map((x) => x)),
        serial: json["serial"],
        status: json["status"],
        id: json["id"],
      );
}
