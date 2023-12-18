import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:moviedb_app/models/popular_movie_model.dart';
import 'package:moviedb_app/provider/artist_popular_provider.dart';
import 'package:moviedb_app/provider/now_showing_provider.dart';
import 'package:moviedb_app/provider/popular_movie_provider.dart';
import 'package:moviedb_app/theme/theme.dart';
import 'package:moviedb_app/widget/home_widget/cast_home_widget.dart';
import 'package:moviedb_app/widget/movie_card_popular.dart';
import 'package:moviedb_app/widget/movie_card_show.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<PopularMovieModel>> popularMovie;
  @override
  void initState() {
    getInit();
    super.initState();
  }

  getInit() {
    Provider.of<PopularMovieProvider>(context, listen: false).getMoviePopular();
    Provider.of<NowShowingProvider>(context, listen: false).getMovieShowing();
    Provider.of<ArtisProvider>(context, listen: false).getArtisPopular();
  }

  @override
  Widget build(BuildContext context) {
    NowShowingProvider nowShowingProvider =
        Provider.of<NowShowingProvider>(context);
    PopularMovieProvider movieProvider =
        Provider.of<PopularMovieProvider>(context);
    ArtisProvider artisProvider = Provider.of<ArtisProvider>(context);

    Future panggilFungsi() async {
      var artis = await Provider.of<ArtisProvider>(context, listen: false)
          .getArtisPopular();
      return artis;
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: bgcolor1,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: primaryTextColor,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.dark_mode, color: primaryTextColor),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications, color: primaryTextColor),
          ),
        ],
        title: Text(
          "Flimku",
          style: primaryTextColorStyle.copyWith(fontSize: 16),
        ),
      );
    }

    Widget headerProfile() {
      return SizedBox(
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
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Now Showing",
                    style: primaryTextColorStyle.copyWith(fontSize: 16),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    panggilFungsi();
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 0.5),
                    ),
                    child: Text(
                      "See more",
                      style: primaryTextColorStyle.copyWith(fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget listShowMovie() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: nowShowingProvider.nowShowingMovie
              .map((nowShowing) => MovieShowCard(
                    popularMovie: nowShowing,
                  ))
              .toList(),
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
      return Column(
        children: movieProvider.popularMovie
            .map((moviePopular) => MovieCardPopular(
                  popularMovie: moviePopular,
                ))
            .toList(),
      );
    }

    Widget castArtis() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Text(
          'Popular Actors',
          textAlign: TextAlign.start,
          style: primaryTextColorStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget listCast() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: artisProvider.artisPopular
              .map(
                (artis) => CastPopular(
                  artis: artis,
                ),
              )
              .toList(),
        ),
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
              castArtis(),
              listCast(),
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
