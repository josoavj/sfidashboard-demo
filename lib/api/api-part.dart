import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  const url = 'https://192.168.0.19:9200'; // Replace with your Elasticsearch URL

  final response = await http.get(Uri.parse('$url/_search'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    // Process the retrieved data here
    print(data);
  } else {
    print('Failed to retrieve data. Status code: ${response.statusCode}');
  }
}