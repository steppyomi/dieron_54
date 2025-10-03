import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Get in Touch',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.circular(8),)),

            SizedBox(height: 20),

            // Name field container
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text('Full Name'),
               // 1. Name field style
            ),

            SizedBox(height: 12),

            // Email field container
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 104, 94, 248),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(style: TextStyle(color: Colors.white, fontSize: 16),'Email Address',), // 2. Email field style
            ),

            SizedBox(height: 12),

            // Dropdown field container
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color.fromARGB(31, 65, 61, 61)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Select Reason'),
                  Icon(Icons.arrow_drop_down),
                ],
              ), // 3. Dropdown style
            ),

            SizedBox(height: 12),

            // Message box container
            Container(
              padding: const EdgeInsets.all(12),
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Your Message'),
              ), // 4. Message box style
            ),

            SizedBox(height: 20),

            // Submit button container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 0, 0),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ), // 5. Button style
            ),

            SizedBox(height: 20),

            // Summary card container
            Container(padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 247, 247),
                boxShadow: [
                  BoxShadow(
                  color: const Color.fromARGB(255, 39, 15, 255),
                  blurRadius: 8,
                ),
              ],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Name: __________'),
              Text('Email: __________'),
              Text('Reason: __________'),
              Text('Message: __________'),
            ],
          ),
               // 6. Card style
            ),
          ],
        ),
      ),
    );
 }
}

