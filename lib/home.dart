import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void getRequest() async {
    //need URL
    var url = Uri.parse("https://reqres.in/api/users");
    var response = await http.get(url);
    print(response.statusCode.toString());
  }

  void postRequest() async {
    var url = Uri.parse("https://reqres.in/api/login");
    var data = {"email": "eve.holt@reqres.in", "password": "cityslicka"};
    var response = await http.post(url, body: data);
    print(response.body.toString());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRequest();
    postRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP PACKAGE"),
      ),
      body: SafeArea(
          child: Container(
        child: Text('Body'),
      )),
    );
  }
}
