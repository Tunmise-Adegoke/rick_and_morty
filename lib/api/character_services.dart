import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty/model/charaters.dart';

class CharaterServices {
  List<Character> character = [];

  Future<List<Character>> fetchCharacter() async {
    character = [];
    http.Response response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      character
          .addAll(Autogenerated.fromJson(jsonDecode(jsonString)).character!);
    } else {
      throw Exception('Error');
    }
    return character;
  }
}
