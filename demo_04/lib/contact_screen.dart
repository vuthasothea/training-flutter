
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {

  final String? message;
  ContactScreen({@required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Screen"),
      ),
      body: Center(child: Text(message!)),
    );
  }
  
}