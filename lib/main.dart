import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> imageURL = [
    "https://static.vecteezy.com/system/resources/previews/032/400/914/non_2x/charming-cute-3d-cartoon-girl-generate-ai-photo.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO8R-XjQ9RVHLUo9eTXI0A183Ymy2aTLjHmQ&s",
    "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA0L2pvYjY4Ni0yNTMteC5qcGc.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRre7HcSQGP0PhCdsoqEN7Y6j0tfygxOC_0BQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQVtfpnSHgJkM3Gphq-lLqweCBuQfqZ5lKVw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVYxK-yhGbRmDwZxo_aMqjHBKI2zvxqBv6tg&s",
    "https://t4.ftcdn.net/jpg/05/47/71/47/360_F_547714760_sEcPXwbXcV834mc2IINTpWbtx6jsCrk9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Image Grid View",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = constraints.maxWidth > 800 ? 4 : 2;
              return GridView.builder(
                itemCount: imageURL.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      imageURL[index],
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(child: CircularProgressIndicator());
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[300],
                          child: Icon(Icons.broken_image, size: 50),
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
