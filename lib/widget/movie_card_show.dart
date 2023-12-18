import 'package:flutter/material.dart';
import 'package:moviedb_app/models/popular_movie_model.dart';
import 'package:moviedb_app/theme/theme.dart';

class MovieShowCard extends StatelessWidget {
  final PopularMovieModel popularMovie;
  final Color color;
  const MovieShowCard(
      {super.key, required this.popularMovie, required this.color});

  @override
  Widget build(BuildContext context) {
    double popularRated =
        double.parse(popularMovie.voteAverage.toStringAsFixed(1));
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/detail-movie'),
      child: Container(
        margin: const EdgeInsets.only(top: 16, right: 8, left: 8),
        width: 143,
        height: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://image.tmdb.org/t/p/w500/${popularMovie.posterPath}',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              popularMovie.originalTitle,
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: primaryTextColorStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
                color: color,
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
                  '${popularRated.toString()}/10',
                  style: primaryTextColorStyle.copyWith(
                    color: color,
                    fontSize: 12,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}




// GestureDetector(
//       onTap: () => Navigator.pushNamed(context, '/detail-movie'),
//       child: Container(
//         margin: const EdgeInsets.only(top: 16, right: 8, left: 8),
//         width: 143,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Image.asset('assets/spiderman.png'),
//             ),
//             const SizedBox(
//               height: 12,
//             ),
//             Text(
//               "Spiderman NoWay Home",
//               style: primaryTextColorStyle.copyWith(
//                   fontSize: 16, fontWeight: bold),
//             ),
//             const SizedBox(
//               height: 8,
//             ),
//             Row(
//               children: [
//                 Image.asset(
//                   'assets/Star.png',
//                   width: 12,
//                 ),
//                 const SizedBox(
//                   width: 4,
//                 ),
//                 Text(
//                   '9.1/10 IMDb',
//                   style: primaryTextColorStyle.copyWith(
//                     fontSize: 12,
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );