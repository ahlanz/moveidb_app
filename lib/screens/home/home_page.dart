import 'package:flutter/material.dart';
import 'package:moviedb_app/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: bgcolor1,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications, color: Colors.black),
          ),
        ],
        title: Text(
          "Flimku",
          style: primaryTextColorStyle.copyWith(fontSize: 16),
        ),
      );
    }

    Widget headerShow() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Now Showing",
                style: primaryTextColorStyle.copyWith(fontSize: 16),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 0.5),
              ),
              child: Text(
                "See more",
                style: primaryTextColorStyle.copyWith(fontSize: 10),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: margin, vertical: 16),
        child: ListView(
          children: [
            headerShow(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgcolor1,
      appBar: header(),
      body: content(),
    );
  }
}
