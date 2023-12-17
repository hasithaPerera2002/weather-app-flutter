// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  late final String uri;

  NetworkHelper({required this.uri});

  // ignore: empty_constructor_bodies
  Future getData() async {
    String uri = 'YOUR_API_ENDPOINT_HERE'; // Replace with your API endpoint

    print('Fetching data...');
    try {
      http.Response response = await http.get(Uri.parse(uri));

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print('Failed to fetch data. Status code: ${response.statusCode}');

        return '';
      }
    } catch (e) {
      print('Exception: $e');

      return '';
    }
  }
}
