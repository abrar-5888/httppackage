import 'package:flutter/material.dart';
import './home.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(HttpPackage());
}

class HttpPackage extends StatelessWidget {
  const HttpPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
