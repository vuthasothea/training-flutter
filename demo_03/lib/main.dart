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
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController usdController = TextEditingController();
  TextEditingController khrController = TextEditingController();

  @override
  Widget build(BuildContext context) {        
    return Scaffold(
      appBar: AppBar(
        title: Text("Currency Converter"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("USD :   "),
                Flexible(
                  child: TextField(
                    controller: usdController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  )                  
                )
              ],
            ),

            SizedBox(height: 10),

            Row(
              children: [
                Text("KHR :   "),
                Flexible(
                  child: TextField(
                    controller: khrController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    enabled: false,
                  )
                )
              ],
            ),

            SizedBox(height: 10),

            Row(              
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(120, 45))
                  ),
                  onPressed: () {
                    double usd = double.parse(usdController.text);
                    double khr = _khrConverter(usd);
                    khrController.text = khr.toString();
                  },
                  child: Text("CONVERT"),
                ),

                SizedBox(width: 5),

                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(120, 45)),
                    backgroundColor: MaterialStateProperty.all(Colors.red)
                  ),
                  onPressed: () {
                    usdController.text = "";
                    khrController.text = "";
                  },
                  child: Text("CLEAR"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Mark: Function for convert
  double _khrConverter(double usd) {
    return usd * 4000;    
  }
  
}