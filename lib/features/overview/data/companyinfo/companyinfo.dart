import 'headquarters.dart';
import 'links.dart';

class CompanyInfo {
  Headquarters? headquarters;
  Links? links;
  String? name;
  String? founder;
  int? founded;
  int? employees;
  int? vehicles;
  int? launchSites;
  int? testSites;
  String? ceo;
  String? cto;
  String? coo;
  String? ctoPropulsion;
  int? valuation;
  String? summary;
  String? id;

  CompanyInfo({
    this.headquarters,
    this.links,
    this.name,
    this.founder,
    this.founded,
    this.employees,
    this.vehicles,
    this.launchSites,
    this.testSites,
    this.ceo,
    this.cto,
    this.coo,
    this.ctoPropulsion,
    this.valuation,
    this.summary,
    this.id,
  });

  factory CompanyInfo.fromJson(Map<String, dynamic> json) => CompanyInfo(
        headquarters: json['headquarters'],
        links: json['links'],
        name: json['name'],
        founder: json['founder'],
        founded: json['founded'],
        employees: json['employees'],
        vehicles: json['vehicles'],
        launchSites: json['launch_sites'],
        testSites: json['test_sites'],
        ceo: json['ceo'],
        cto: json['cto'],
        coo: json['coo'],
        ctoPropulsion: json['cto_propulsion'],
        valuation: json['valuation'],
        summary: json['summary'],
        id: json['id'],
      );
}
