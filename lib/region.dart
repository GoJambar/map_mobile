class Regions {
  //? apres le type permet dinitialiser une variable
  int? codeRegion;
  String? name;
  double? superficie, population, latitude, longitude;

  Regions(this.codeRegion, this.name, this.superficie, this.population,
      this.latitude, this.longitude);
//ca permet de récupérer les données de l'API en json
  Regions.fromJson(dynamic json) {
    codeRegion = json['codeRegion'];
    name = json['name'];
    superficie = json['superficie'];
    population = json['population'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }
//ca permet de convertir le json
  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['codeRegion'] = codeRegion;
    map['name'] = name;
    map['superficie'] = superficie;
    map['population'] = population;
    map['latitude'] = latitude;
    map['longitude'] = longitude;

    return map;
  }
}
