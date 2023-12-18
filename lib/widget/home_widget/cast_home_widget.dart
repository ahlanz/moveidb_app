import 'package:flutter/material.dart';
import 'package:moviedb_app/models/cast_artis_popular_model.dart';
import 'package:moviedb_app/theme/theme.dart';

class CastPopular extends StatelessWidget {
  final ArtisModel artis;
  const CastPopular({super.key, required this.artis});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: SizedBox(
        height: 110,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'https://image.tmdb.org/t/p/w500/${artis.profilePhoto}',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              width: 60,
              child: Text(
                artis.name.toString(),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: primaryTextColorStyle.copyWith(fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
