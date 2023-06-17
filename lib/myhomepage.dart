import 'package:flutter/material.dart';
import 'package:flutter_application_2/leson.dart';
import 'package:flutter_application_2/progrms.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> cardImages = [
    'newborn.png',
    'young.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Handle menu icon press
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {
              // Handle chat icon press
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded),
            onPressed: () {
              // Handle notifications icon press
            },
          ),
        ],
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Hello Priya',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'What do you want to learn today?',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: OutlinedButton(
                              onPressed: () {
                                // Handle programs button press
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const progrms()),
                                );
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.book_outlined),
                                  Text(
                                    'Programs',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: OutlinedButton(
                              onPressed: () {
                                // Handle get help button press
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.help),
                                  Text(
                                    'Get Help',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: OutlinedButton(
                              onPressed: () {
                                // Handle learn button press
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const leson()),
                                );
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.menu_book_rounded),
                                  Text(
                                    'Learn',
                                    style: TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: OutlinedButton(
                              onPressed: () {
                                // Handle DD Tracker button press
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.track_changes),
                                  Text(
                                    'DD Tracker',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Programs for you",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 140, top: 20),
                  child: Row(
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(fontSize: 15),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 400,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cardImages.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 242,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    'assets/${cardImages[index]}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'LIFESTYLE',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'A Complete guide for your new born baby',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  '16 lessons',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Events and experiences",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 80, top: 20),
                  child: Row(
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(fontSize: 15),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 400,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cardImages.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 242,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    'assets/${cardImages[index]}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'BABYCARE',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Understanding of human behaviour',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 5),
                                const Row(
                                  children: [
                                    Text(
                                      '13 Feb, Sunday',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Books',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "lessons for you",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 160, top: 20),
                  child: Row(
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(fontSize: 15),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 400,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cardImages.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 242,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    'assets/${cardImages[index]}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'BABYCARE',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Understanding of human behaviour',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 5),
                                const Row(
                                  children: [
                                    Text(
                                      '3 min',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(width: 160),
                                    Icon(Icons.lock_outline),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Container(
              height: 400,
              child: const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.h_mobiledata_rounded),
            label: 'Hub',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_rounded),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
