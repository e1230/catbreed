import 'package:catbreed/models/catbreeds_model.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

final _URL_CATBREEDS = "https://api.thecatapi.com/v1/breeds";

Map<String, String> get _HEADERS =>
    {"x-api-key": "bda53789-d59e-46cd-9bc4-2936630fde39"};

class CatbreedsService with ChangeNotifier {
  List<CatBreedsResponse> cats = [];

  CatbreedsService() {
    this.getCatbreeds();
  }

  getCatbreeds() async {
    final url = _URL_CATBREEDS;
    final resp = await http.get(Uri.parse(_URL_CATBREEDS), headers: _HEADERS);

    final catBreedsResponse = catBreedsResponseFromJson(resp.body);

    this.cats.addAll(catBreedsResponse);
    notifyListeners();
  }
}
