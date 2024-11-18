import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:satelite/find_satellite_screen.dart';

class SatelliteService {
  /// Fetch ISS passes based on observer's location.
  static Future<List<dynamic>> getSatellitePasses({
    required String id,
  }) async {
    String url =
        "https://sat.terrestre.ar/passes/$id?lat=50.07540330062991&lon=14.405783843042629&limit=10";

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data);
      return []; // List of pass times
    } else {
      throw Exception('Failed to load satellite passes');
    }
  }
}
