import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:moviedb_app/theme.dart';
import 'package:moviedb_app/widget/movie_card_popular.dart';
import 'package:moviedb_app/widget/movie_card_show.dart';

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

    Widget headerProfile() {
      return Container(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hai Haidar",
                    style: primaryTextColorStyle.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Mau nonton film apa hari ini?',
                    style: primaryTextColorStyle.copyWith(
                        fontSize: 14, fontWeight: semibold),
                  )
                ],
              ),
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/spiderman.png'),
            )
          ],
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

    Widget listShowMovie() {
      return const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            MovieShowCard(),
            MovieShowCard(),
            MovieShowCard(),
            MovieShowCard(),
          ],
        ),
      );
    }

    Widget headerPopular() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Popular",
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

    Widget listPopularCard() {
      return const Column(
        children: [
          MovieCardPopular(),
          MovieCardPopular(),
          MovieCardPopular(),
          MovieCardPopular(),
          MovieCardPopular(),
          MovieCardPopular(),
          MovieCardPopular(),
        ],
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: margin, vertical: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              headerProfile(),
              headerShow(),
              listShowMovie(),
              headerPopular(),
              listPopularCard()
            ],
          ),
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
