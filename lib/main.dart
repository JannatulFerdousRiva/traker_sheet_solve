import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 252, 139, 237),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "Items ${index + 1}",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 29, 172, 255),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
