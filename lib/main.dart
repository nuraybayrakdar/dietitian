import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:dietitian/view/home/profile/view/profile_view.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 1;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(Icons.person, color: Colors.white),
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.favorite, color: Colors.white),
        ],
        inactiveIcons: const [
          Text(
            "My",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Like",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Like",
            style: TextStyle(color: Colors.white),
          ),
        ],
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xff1f005c),
            Color(0xff5b0060),
            Color(0xffffb56b),
          ],
        ),
        height: 60,
        circleWidth: 60,
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController.jumpToPage(tabIndex);
        },
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: Colors.deepPurple,
        elevation: 10,
        color: Colors.white.withOpacity(0.9),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white),
          Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white),
          Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white),
          const ProfileView(),
        ],
      ),
    );
  }
}
