import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen()
    );
  }

}

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest API"),
      ),
      body: FutureBuilder<Map>(
        future: _loadDataFromAPI(),
        builder: (context, snapshot) {

          if(snapshot.hasData) {
            return Center(child: Text("Title : ${snapshot.data!["title"]}"));
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Future<Map<String, dynamic>> _loadDataFromAPI() async {

    Map<String, dynamic> data = {};
    try {

      var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
      print(response.body);
      data = json.decode(response.body);
      print(data["title"]);

    } catch (ex) {
      print(ex);
    }
    return data;

  }

}