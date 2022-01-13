import 'package:day_6/pages/call.dart';
import 'package:day_6/pages/home.dart';
import 'package:day_6/pages/profil.dart';
import 'package:day_6/pages/search.dart';
// import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List _pages = [
    HomePage(),
    SearchPage(),
    CarPage(),
    CallPage(),
  ];
  @override
  Widget build(BuildContext context) {
    // PageController pageController = PageController();
    void _onTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
      // pageController.jumpToPage(index);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Horizontal List'),
      ),
      // body: ListView.separated(
      //   scrollDirection: Axis.horizontal,
      //   itemBuilder: (BuildContext ctx, int index) {
      //     return Container(
      //       height: 400,
      //       margin: const EdgeInsets.symmetric(vertical: 5),
      //       decoration: BoxDecoration(
      //         border: Border.all(width: 5, color: Colors.black),
      //       ),
      //       child: Image.asset(
      //         images[index],
      //         width: 200,
      //         fit: BoxFit.cover,
      //       ),
      //       //
      //     );
      //   },
      //   itemCount: images.length,
      //   separatorBuilder: (BuildContext context, int index) {
      //     return Container(
      //       margin: const EdgeInsets.symmetric(vertical: 5),
      //       width: 20,
      //       // color: Colors.blueGrey,
      //       decoration: const BoxDecoration(
      //         gradient: LinearGradient(
      //             colors: [Colors.deepOrange, Colors.blue],
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight),
      //       ),
      //     );
      //   },
      // ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      // body: Row(
      //   children: const [
      //     HomePage(),
      //     CallPage(),
      //     SearchPage(),
      //     CarPage(),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          (BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')),
          (BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search')),
          (BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call')
        ],
        // type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        // selectedIconTheme: const IconThemeData(
        //   color: Colors.black,
        // ),
        // unselectedIconTheme: const IconThemeData(color: Colors.grey),
        onTap: _onTapped,
      ),
    );
  }
}
