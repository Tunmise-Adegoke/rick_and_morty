class Autogenerated {
  String? characters;
  String? locations;
  String? episodes;

  Autogenerated({this.characters, this.locations, this.episodes});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    characters = json['characters'];
    locations = json['locations'];
    episodes = json['episodes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['characters'] = this.characters;
    data['locations'] = this.locations;
    data['episodes'] = this.episodes;
    return data;
  }
}
