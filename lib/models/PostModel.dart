class PostModel {
  final String idTeam;
  final String? idSoccerXML;
  final String? idAPIfootball;
  final int? intLoved;
  final String strTeam;
  final String? strTeamAlternate;
  final String? strTeamShort;
  final int? intFormedYear;
  final String strSport;
  final String strLeague;
  final String? idLeague;
  final String? strLeague2;
  final String? idLeague2;
  final String? strLeague3;
  final String? idLeague3;
  final String? strLeague4;
  final String? idLeague4;
  final String? strDivision;
  final String? idVenue;
  final String? strStadium;
  final String? strKeywords;
  final String? strRSS;
  final String? strLocation;
  final int? intStadiumCapacity;
  final String? strWebsite;
  final String? strFacebook;
  final String? strTwitter;
  final String? strInstagram;
  final String? strDescriptionEN;
  final String? strDescriptionDE;
  final String? strDescriptionFR;
  final String? strDescriptionIT;
  final String? strDescriptionCN;
  final String? strLogo;  // Menambahkan strLogo

  PostModel({
    required this.idTeam,
    this.idSoccerXML,
    this.idAPIfootball,
    this.intLoved,
    required this.strTeam,
    this.strTeamAlternate,
    this.strTeamShort,
    this.intFormedYear,
    required this.strSport,
    required this.strLeague,
    this.idLeague,
    this.strLeague2,
    this.idLeague2,
    this.strLeague3,
    this.idLeague3,
    this.strLeague4,
    this.idLeague4,
    this.strDivision,
    this.idVenue,
    this.strStadium,
    this.strKeywords,
    this.strRSS,
    this.strLocation,
    this.intStadiumCapacity,
    this.strWebsite,
    this.strFacebook,
    this.strTwitter,
    this.strInstagram,
    this.strDescriptionEN,
    this.strDescriptionDE,
    this.strDescriptionFR,
    this.strDescriptionIT,
    this.strDescriptionCN,
    this.strLogo,  // Menambahkan strLogo ke constructor
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      idTeam: json['idTeam'] ?? '',
      idSoccerXML: json['idSoccerXML'] as String?,
      idAPIfootball: json['idAPIfootball'] as String?,
      intLoved: json['intLoved'] != null ? int.tryParse(json['intLoved'].toString()) : null,
      strTeam: json['strTeam'] ?? '',
      strTeamAlternate: json['strTeamAlternate'] as String?,
      strTeamShort: json['strTeamShort'] as String?,
      intFormedYear: json['intFormedYear'] != null ? int.tryParse(json['intFormedYear'].toString()) : null,
      strSport: json['strSport'] ?? '',
      strLeague: json['strLeague'] ?? '',
      idLeague: json['idLeague'] as String?,
      strLeague2: json['strLeague2'] as String?,
      idLeague2: json['idLeague2'] as String?,
      strLeague3: json['strLeague3'] as String?,
      idLeague3: json['idLeague3'] as String?,
      strLeague4: json['strLeague4'] as String?,
      idLeague4: json['idLeague4'] as String?,
      strDivision: json['strDivision'] as String?,
      idVenue: json['idVenue'] as String?,
      strStadium: json['strStadium'] as String?,
      strKeywords: json['strKeywords'] as String?,
      strRSS: json['strRSS'] as String?,
      strLocation: json['strLocation'] as String?,
      intStadiumCapacity: json['intStadiumCapacity'] != null
          ? int.tryParse(json['intStadiumCapacity'].toString())
          : null,
      strWebsite: json['strWebsite'] as String?,
      strFacebook: json['strFacebook'] as String?,
      strTwitter: json['strTwitter'] as String?,
      strInstagram: json['strInstagram'] as String?,
      strDescriptionEN: json['strDescriptionEN'] as String?,
      strDescriptionDE: json['strDescriptionDE'] as String?,
      strDescriptionFR: json['strDescriptionFR'] as String?,
      strDescriptionIT: json['strDescriptionIT'] as String?,
      strDescriptionCN: json['strDescriptionCN'] as String?,
      strLogo: json['strLogo'] as String?,  // Menambahkan strLogo pada factory method
    );
  }
}
