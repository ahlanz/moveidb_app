import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:moviedb_app/screens/home/home_page.dart';
import 'package:moviedb_app/theme/theme.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int curentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> body = [
      HomePage(),
      Center(child: Text("Detail film")),
      Center(child: Text("Detail film")),
      Center(child: Text("Detail film")),
    ];

    return Scaffold(
      body: body[curentIndex],
      backgroundColor: bgcolor1,
      bottomNavigationBar: ConvexAppBar(
        disableDefaultTabController: false,
        color: primaryTextColor,
        height: 60,
        backgroundColor: bgcolor1,
        activeColor: const Color(0xffFFFFFF),
        items: const [
          TabItem(icon: Icons.home, title: ''),
          TabItem(
            icon: Icons.tiktok,
            title: '',
          ),
          TabItem(icon: Icons.bookmark, title: ''),
        ],
        onTap: (int i) {
          setState(() {
            curentIndex = i;
          });
        },
        initialActiveIndex: 0,
      ),
    );
  }
}
