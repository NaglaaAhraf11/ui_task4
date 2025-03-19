import 'package:flutter/material.dart';
import 'package:week4/views/chats.dart';
import 'package:week4/views/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 24,
            ),
            SizedBox(
              width: 16,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 24,
            ),
            SizedBox(
              width: 16,
            ),
            Image(
              image: AssetImage(
                'images/menu.png',
              ),
              height: 19.5,
              width: 5.5,
            ),
            SizedBox(
              width: 16,
            ),
          ],
          backgroundColor: const Color(0xff128C7E),
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                iconMargin: EdgeInsets.all(100),
                child: Image(
                  image: AssetImage(
                    'images/community.png',
                  ),
                  height: 32,
                  width: 32,
                ),
              ),
              Tab(
                  child: Row(
                children: [
                  Text(
                    'Chats ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Image(
                    image: AssetImage('images/badge.png'),
                    height: 21,
                    width: 19,
                  ),
                ],
              )),
              Tab(
                child: Text(
                  'Status',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'Calls ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ],
            labelColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(' '),
            ),
            ChatsScreen(),
            StatusScreen(),
            Center(child: Text('Call feature is coming soon')),
          ],
        ),
      ),
    );
  }
}
