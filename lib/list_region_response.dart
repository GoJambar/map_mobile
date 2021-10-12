
class ListRegionResponse {
  ListRegionResponse({
      int? id, 
      String? codeRegion, 
      String? name, 
      String? photo, 
      double? superficie, 
      double? population, 
      double? latitude, 
      double? longitute, 
      String? detail, 
      List<Depart>? depart,}){
    _id = id;
    _codeRegion = codeRegion;
    _name = name;
    _photo = photo;
    _superficie = superficie;
    _population = population;
    _latitude = latitude;
    _longitute = longitute;
    _detail = detail;
    _depart = depart;
}

  ListRegionResponse.fromJson(dynamic json) {
    _id = json['id'];
    _codeRegion = json['codeRegion'];
    _name = json['name'];
    _photo = json['photo'];
    _superficie = json['superficie'];
    _population = json['population'];
    _latitude = json['latitude'];
    _longitute = json['longitute'];
    _detail = json['detail'];
    if (json['depart'] != null) {
      _depart = [];
      json['depart'].forEach((v) {
        _depart?.add(Depart.fromJson(v));
      });
    }
  }
  int? _id;
  String? _codeRegion;
  String? _name;
  String? _photo;
  double? _superficie;
  double? _population;
  double? _latitude;
  double? _longitute;
  String? _detail;
  List<Depart>? _depart;

  int? get id => _id;
  String? get codeRegion => _codeRegion;
  String? get name => _name;
  String? get photo => _photo;
  double? get superficie => _superficie;
  double? get population => _population;
  double? get latitude => _latitude;
  double? get longitute => _longitute;
  String? get detail => _detail;
  List<Depart>? get depart => _depart;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['codeRegion'] = _codeRegion;
    map['name'] = _name;
    map['photo'] = _photo;
    map['superficie'] = _superficie;
    map['population'] = _population;
    map['latitude'] = _latitude;
    map['longitute'] = _longitute;
    map['detail'] = _detail;
    if (_depart != null) {
      map['depart'] = _depart?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 15
/// codeDep : "001"
/// name : "dakar"
/// superficie : 10.2
/// population : 142.0
/// latitude : 25.5
/// longitute : 55.6
/// detail : "dakar detail"
/// arron : [{"id":60,"codeAr":"001","name":"DAKAR","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":"DAKAR detail","commun":[]},{"id":61,"codeAr":"002","name":"DAKAR-PLATEAU","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":"DAKAR-PLATEAU detail","commun":[{"id":75,"codeCom":"0017","name":" Îles_des_Madeleines","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":" Îles_des_Madeleines detail"},{"id":76,"codeCom":"0018","name":" Fann_PointE_Amitie","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":" Fann_PointE_Amitie detail"},{"id":77,"codeCom":"0019","name":" Gorée","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":" Gorée detail"},{"id":78,"codeCom":"0020","name":" GueleTapée_Fass_Colobane","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":" GueleTapée_Fass_Colobane detail"},{"id":79,"codeCom":"0021","name":" Médina","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":" Médina detail"},{"id":80,"codeCom":"0022","name":" Plateau","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":" Plateau detail"}]},{"id":62,"codeAr":"003","name":"GRAND DAKAR ","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":"GRAND DAKAR  detail","commun":[{"id":81,"codeCom":"0023","name":" Buscuterie","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":" Buscuterie detail"}]},{"id":63,"codeAr":"004","name":"ALMADIES","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":"ALMADIES detail","commun":[{"id":71,"codeCom":"0013","name":" Mermoz_Sacre_Coeur","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":" Mermoz_Sacre_Coeur detail"},{"id":72,"codeCom":"0014","name":" Ngor","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":" Ngor detail"},{"id":73,"codeCom":"0015","name":" Ouakam","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":" Ouakam detail"},{"id":74,"codeCom":"0016","name":" Yoff","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":" Yoff detail"}]},{"id":64,"codeAr":"005","name":"PARCELLES ASSAINIES","superficie":125.5,"population":25.6,"latitude":558.6,"longitute":554.5,"detail":"PARCELLES ASSAINIESdetail","commun":[]}]

class Depart {
  Depart({
      int? id, 
      String? codeDep, 
      String? name, 
      double? superficie, 
      double? population, 
      double? latitude, 
      double? longitute, 
      String? detail, 
      List<Arron>? arron,}){
    _id = id;
    _codeDep = codeDep;
    _name = name;
    _superficie = superficie;
    _population = population;
    _latitude = latitude;
    _longitute = longitute;
    _detail = detail;
    _arron = arron;
}

  Depart.fromJson(dynamic json) {
    _id = json['id'];
    _codeDep = json['codeDep'];
    _name = json['name'];
    _superficie = json['superficie'];
    _population = json['population'];
    _latitude = json['latitude'];
    _longitute = json['longitute'];
    _detail = json['detail'];
    if (json['arron'] != null) {
      _arron = [];
      json['arron'].forEach((v) {
        _arron?.add(Arron.fromJson(v));
      });
    }
  }
  int? _id;
  String? _codeDep;
  String? _name;
  double? _superficie;
  double? _population;
  double? _latitude;
  double? _longitute;
  String? _detail;
  List<Arron>? _arron;

  int? get id => _id;
  String? get codeDep => _codeDep;
  String? get name => _name;
  double? get superficie => _superficie;
  double? get population => _population;
  double? get latitude => _latitude;
  double? get longitute => _longitute;
  String? get detail => _detail;
  List<Arron>? get arron => _arron;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['codeDep'] = _codeDep;
    map['name'] = _name;
    map['superficie'] = _superficie;
    map['population'] = _population;
    map['latitude'] = _latitude;
    map['longitute'] = _longitute;
    map['detail'] = _detail;
    if (_arron != null) {
      map['arron'] = _arron?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 60
/// codeAr : "001"
/// name : "DAKAR"
/// superficie : 125.5
/// population : 25.6
/// latitude : 558.6
/// longitute : 554.5
/// detail : "DAKAR detail"
/// commun : []

class Arron {
  Arron({
      int? id, 
      String? codeAr, 
      String? name, 
      double? superficie, 
      double? population, 
      double? latitude, 
      double? longitute, 
      String? detail, 
      List<dynamic>? commun,}){
    _id = id;
    _codeAr = codeAr;
    _name = name;
    _superficie = superficie;
    _population = population;
    _latitude = latitude;
    _longitute = longitute;
    _detail = detail;
    _commun = commun;
}

  Arron.fromJson(dynamic json) {
    _id = json['id'];
    _codeAr = json['codeAr'];
    _name = json['name'];
    _superficie = json['superficie'];
    _population = json['population'];
    _latitude = json['latitude'];
    _longitute = json['longitute'];
    _detail = json['detail'];
    if (json['commun'] != null) {
      _commun = [];
      json['commun'].forEach((v) {
        // _commun?.add(dynamic.fromJson(v));
      });
    }
  }
  int? _id;
  String? _codeAr;
  String? _name;
  double? _superficie;
  double? _population;
  double? _latitude;
  double? _longitute;
  String? _detail;
  List<dynamic>? _commun;

  int? get id => _id;
  String? get codeAr => _codeAr;
  String? get name => _name;
  double? get superficie => _superficie;
  double? get population => _population;
  double? get latitude => _latitude;
  double? get longitute => _longitute;
  String? get detail => _detail;
  List<dynamic>? get commun => _commun;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['codeAr'] = _codeAr;
    map['name'] = _name;
    map['superficie'] = _superficie;
    map['population'] = _population;
    map['latitude'] = _latitude;
    map['longitute'] = _longitute;
    map['detail'] = _detail;
    if (_commun != null) {
      map['commun'] = _commun?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}