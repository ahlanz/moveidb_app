import 'package:flutter/material.dart';
import 'package:moviedb_app/models/popular_movie_model.dart';
import 'package:moviedb_app/theme/theme.dart';
import 'package:moviedb_app/widget/categories_movie_popular.dart';

class MovieCardPopular extends StatelessWidget {
  final PopularMovieModel popularMovie;
  const MovieCardPopular({super.key, required this.popularMovie});

  @override
  Widget build(BuildContext context) {
    double popularRated =
        double.parse(popularMovie.voteAverage.toStringAsFixed(1));
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/detail-movie'),
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://image.tmdb.org/t/p/w500/${popularMovie.posterPath}',
                width: 85,
                height: 120,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 170,
                  child: Text(
                    popularMovie.originalTitle,
                    style: primaryTextColorStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
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
                      '${popularRated.toString()}/10 IMDb',
                      style: primaryTextColorStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                //todo : genre movie with id
                // const Row(
                //   children: [
                //     CategoriePopularMovie(),
                //     CategoriePopularMovie(),
                //     CategoriePopularMovie(),
                //   ],
                // ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
