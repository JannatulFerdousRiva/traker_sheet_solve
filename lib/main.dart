import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List<Map<String, String>> items = const [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAouKtRIxvJBY7OgydxqSh949_UFoJWLMsrg&s',
      'title': 'kasmir',
      'subtitle': 'kasmir - Rishiraj',
      'description': 'A beautiful view of hill.',
    },
    {
      'image':
          'https://lp-cms-production.imgix.net/2025-03/Shutterstock2314760055.jpg?w=780&h=425&fit=crop&auto=format&q=75',
      'title': 'Ladakh',
      'subtitle': 'Ladakh - Lonely Planet',
      'description': 'Where heaven of nature meets wild blue yonder.',
    },
    {
      'image':
          'https://res.cloudinary.com/enchanting/q_80,f_auto,c_fit,w_640,h_480/exodus-web/2024/10/AdobeStock_405473053.jpeg',
      'title': 'Sikkim',
      'subtitle': 'Sikkim Trips',
      'description':
          'The unique hill resort of Gangtok acts as the mountainous capital of Sikkim.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hover Card Effect App"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: ListView.builder(
          itemCount: items.length,
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) {
            final item = items[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: CustomCard(
                imageURL: item['image']!,
                title: item['title']!,
                subtitle: item['subtitle']!,
                description: item['description']!,
              ),
            );
          },
        ),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String imageURL;
  final String title;
  final String subtitle;
  final String description;

  const CustomCard({
    super.key,
    required this.imageURL,
    required this.title,
    required this.subtitle,
    required this.description,
  });
  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: _isTapped ? 0.97 : 1.0,
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeInOut,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: _isTapped ? 6 : 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped on "${widget.title}"')),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: Image.network(
                    widget.imageURL,
                    width: double.infinity,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.subtitle,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(height: 8),
                      Text(widget.description, style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
