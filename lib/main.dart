import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text("cyber security"),
          ),
          body: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(225),
                    child: Container(
                        color: Colors.deepOrange,
                        height: 200,


                        child: Image(
                            image: AssetImage(
                                "assets/image/AdobeStock_112840348.jpeg"))),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(elevation: MaterialStateProperty.all<double>(10),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.pinkAccent)),
                      onPressed: () {
                        print("Hi kaivalya");
                      },
                      child: Text(
                        "Click me",
                        style: TextStyle(),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
