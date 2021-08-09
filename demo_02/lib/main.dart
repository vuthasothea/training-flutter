import 'package:flutter/material.dart';

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
  _HomeScreenState createState() {
    return _HomeScreenState();
  }  

}

class _HomeScreenState extends State<HomeScreen> {

  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$number", style: TextStyle(fontSize: 30)),
            OutlinedButton(
              child: Text("Press Me"),
              onPressed: () {
                setState(() {
                  number++;
                });
              },
            )
          ],
        ),
      ),
    );
  }

}