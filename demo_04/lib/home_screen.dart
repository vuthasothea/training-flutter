
import 'package:demo_04/contact_screen.dart';
import 'package:demo_04/setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Drawer"),
      ),
      body: Center(
        child: Text("Home Screen"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Demo User"),
              accountEmail: Text("demouser@gmail.com"),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://miro.medium.com/max/1200/1*l3wujEgEKOecwVzf_dqVrQ.jpeg")
                )
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactScreen(message: "Hello")));
              },
            )
          ],
        ),
      ),
    );

  }
  
}