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
          title: Text("Multiple Text Styles"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 151, 238),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Small Text with blue color",
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 13, 100, 231),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Small Bold Text with green color",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 69, 235, 77),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Medium Text with pink color",
                style: TextStyle(
                  fontSize: 30,
                  color: const Color.fromARGB(255, 224, 59, 183),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Medium Bold Text with yellow color",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 228, 231, 36),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Large Text with black color",
                style: TextStyle(
                  fontSize: 40,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Large Bold Text with orange color",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Italic Text",
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: const Color.fromARGB(255, 180, 18, 169),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Underlined Text",
                style: TextStyle(
                  fontSize: 25,
                  decoration: TextDecoration.underline,
                  color: const Color.fromARGB(255, 167, 233, 93),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Left",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 207, 7, 7),
                    ),
                  ),
                  Text(
                    "Middle",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 207, 7, 7),
                    ),
                  ),
                  Text(
                    "Right",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 207, 7, 7),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
