import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/wearher.dart';

class BMKGModel {
  List<Wilayah> wilayahData = [];

  Future<List<Wilayah>> fetchWilayahData() async {
    final response = await http.get(
        Uri.parse('https://ibnux.github.io/BMKG-importer/cuaca/wilayah.json'));
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      wilayahData =
          parsed.map<Wilayah>((json) => Wilayah.fromJson(json)).toList();
      return wilayahData;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<dynamic> fetchCuacaData(String idWilayah) async {
    final response = await http.get(Uri.parse(
        'https://ibnux.github.io/BMKG-importer/cuaca/$idWilayah.json'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
