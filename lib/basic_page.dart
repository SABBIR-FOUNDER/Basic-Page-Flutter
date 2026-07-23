import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF8FF), // Light neutral background
      appBar: AppBar(
        backgroundColor: Colors.amber, // Yellow/Amber Header
        elevation: 0,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.black87),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black87),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.call, color: Colors.black87),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // 1. Ice Cream Section
              CircleAvatar(
                radius: 80,
                backgroundColor: Color(0xFFEADDFF), // Soft lavender background
                child: Icon(
                  Icons.icecream_outlined,
                  size: 85,
                  color: Color(0xFF21005D), // Deep purple icon
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Ice cream is very delicious right?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              SizedBox(height: 48), // Spacing between sections

              // 2. Programming Code Section
              CircleAvatar(
                radius: 80,
                backgroundColor: Color(0xFFEADDFF), // Soft lavender background
                child: Icon(
                  Icons.code,
                  size: 85,
                  color: Color(0xFF21005D), // Deep purple icon
                ),
              ),
              SizedBox(height: 18),
              Text(
                'Programming is not boring if you like it',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}