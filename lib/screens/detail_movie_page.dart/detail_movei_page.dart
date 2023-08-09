import 'package:flutter/material.dart';
import 'package:moviedb_app/theme.dart';
import 'package:moviedb_app/widget/cast_widget.dart';
import 'package:moviedb_app/widget/categories_movie_popular.dart';

class DetailMoviePage extends StatelessWidget {
  const DetailMoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image.asset(
              'assets/spiderman.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                color: bgcolor1,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 250),
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            decoration: BoxDecoration(
              color: bgcolor1,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(24),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE: HEader/Judul Film dan bookmark
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 198,
                      child: Text(
                        "Spiderman: No Way Home",
                        style: primaryTextColorStyle.copyWith(
                          fontSize: 20,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_add_outlined),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                // NOTED : RATING FILM
                Row(
                  children: [
                    Image.asset(
                      'assets/Star.png',
                      width: 12,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '9.1/10 IMDb',
                      style: primaryTextColorStyle.copyWith(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                // NOTE : Genre Film
                const Row(
                  children: [
                    CategoriePopularMovie(),
                    CategoriePopularMovie(),
                    CategoriePopularMovie(),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                // NOTE : Batas waktu penayangan film
                Row(
                  children: [
                    SizedBox(
                      width: 109,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Length',
                            style: primaryTextColorStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '2h 28min',
                            style: primaryTextColorStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 109,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Length',
                            style: primaryTextColorStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '2h 28min',
                            style: primaryTextColorStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 109,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Length',
                            style: primaryTextColorStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '2h 28min',
                            style: primaryTextColorStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                // NOTE : Deskripsi Film
                Text(
                  'Description',
                  style: primaryTextColorStyle.copyWith(
                      fontSize: 16, fontWeight: bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'With Spider-Mans identity now revealed, Peter asks Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be SpiderMan.',
                    style: TextStyle(
                      color: Color(0xff9C9C9C),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                //NOTE : Cast/pemain film
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Cast",
                        style: primaryTextColorStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 0.5),
                      ),
                      child: Text(
                        "See more",
                        style: primaryTextColorStyle.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CastWidget(),
                      CastWidget(),
                      CastWidget(),
                      CastWidget(),
                      CastWidget(),
                      CastWidget(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            content(),
          ],
        ),
      ),
    );
  }
}
