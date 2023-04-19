import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/logo1.jpg",
    "assets/images/logo2.jpg",
    "assets/images/logo3.png",
    "assets/images/logo4.png",
    "assets/images/logo5.jpg",
    "assets/images/logo6.jpg",
    "assets/images/logo7.jpg",
    "assets/images/logo8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Jmas Jrz"),
        ),
        body: GridView.count(
          crossAxisCount: 1,
          children: [
            Container(
              color: Color(0xff4ca8af),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/logo1.jpg"),
                  Text("Casa", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              color: Color(0xff4ca8af),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/logo2.jpg"),
                  Text("Juntas", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              color: Color(0xff4ca8af),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/logo3.png"),
                  Text("Ubicaciones", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              color: Color(0xff4ca8af),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/logo4.png"),
                  Text("Orders", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
          ],
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ));
  }
}
