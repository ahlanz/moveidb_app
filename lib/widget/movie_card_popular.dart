import 'package:flutter/material.dart';
import 'package:moviedb_app/theme.dart';
import 'package:moviedb_app/widget/categories_movie_popular.dart';

class MovieCardPopular extends StatelessWidget {
  const MovieCardPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/detail-movie'),
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/spiderman.png',
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
                Text(
                  "Venom Let There Be Carnage",
                  style: primaryTextColorStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
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
                      '9.1/10 IMDb',
                      style: primaryTextColorStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    CategoriePopularMovie(),
                    CategoriePopularMovie(),
                    CategoriePopularMovie(),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Icon(Icons.punch_clock),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "1h 47m",
                      style: primaryTextColorStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
