import 'dart:convert';
import 'package:uzayRehberApp/model/planets.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

/*String url = 'localhost:3000/posts';
Future<List<Question>> 
getPost() async {
  List<Question> _questions = [];
  final response = await http.get(url);
  final bodyResponse = jsonDecode(response.body);
  if (bodyResponse is List) {
    _questions = bodyResponse.map((e) => Question.fromJson(e)).toList();
  }
  return _questions;
}*/
String url = 'localhost:3000/posts';
Future<Question> getPost() async {
  final response = await http.get('$url/1');
  return questionFromJson(response.body);
}
