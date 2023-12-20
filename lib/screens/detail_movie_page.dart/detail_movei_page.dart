import 'package:flutter/material.dart';
import 'package:moviedb_app/models/popular_movie_model.dart';
import 'package:moviedb_app/theme/theme.dart';
import 'package:moviedb_app/widget/cast_widget.dart';

class DetailMoviePage extends StatelessWidget {
  final PopularMovieModel movie;
  const DetailMoviePage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    double popularRated = double.parse(movie.voteAverage.toStringAsFixed(1));

    Widget header() {
      return Container(
        width: double.infinity,
        child: Stack(
          children: [
            Image.network(
              'https://image.tmdb.org/t/p/w500/${movie.posterPath}',
              width: double.infinity,
              height: 570,
              fit: BoxFit.cover,
            ),
            Container(
              margin: const EdgeInsets.only(top: 560),
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: bgcolor1,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget judul() {
      return Column(
        children: [
          //Todo judul film dan bookmark
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 198,
                child: Text(
                  movie.originalTitle,
                  style: primaryTextColorStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ),
              Icon(Icons.bookmark)
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          //Todo rating film
          Row(
            children: [
              Image.asset(
                'assets/Star.png',
                width: 12,
              ),
              const SizedBox(
                width: 4,
              ),
              Text('$popularRated/10 IMDb')
            ],
          ),
          // const SizedBox(
          //   height: 18,
          // ),
          //Todo List Genre
        ],
      );
    }

    Widget deskripsi() {
      return Container(
        margin: const EdgeInsets.only(top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: primaryTextColorStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              child: Text(
                movie.overview,
                style: primaryTextColorStyle.copyWith(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget artisMovie() {
      return Container(
        margin: const EdgeInsets.only(top: 18, bottom: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Artis Movie',
              style: primaryTextColorStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
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
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget isiContent() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            judul(),
            deskripsi(),
            artisMovie(),
          ],
        ),
      );
    }

    Widget content() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            header(),
            isiContent(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgcolor1,
      body: content(),
    );
  }
}
