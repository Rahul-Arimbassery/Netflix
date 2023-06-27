import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/main.dart';
import 'package:netflixclone/presentation/widgets/video_widget.dart';

class CommingSoonWidget extends StatelessWidget {
  final int index;
  const CommingSoonWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 380,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'FEB',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '11',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 380,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(index: index, array: trendingmovies),
              kHeight,
              Row(
                children: [
                  Expanded(
                    child: Text(
                      trendingmovies[index]['original_title'] ?? 'Default Name',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(width: 90),
                  const Icon(
                    Icons.notifications,
                    color: kWhite,
                    size: 20,
                  ),
                  kWidth,
                  kWidth,
                  kWidth,
                  const Icon(Icons.info_outline, color: kWhite, size: 20),
                  kWidth,
                ],
              ),
              kHeight,
              Text(
                trendingmovies[index]['release_date'] ?? 'Default Name',
              ),
              kHeight,
              Text(
                trendingmovies[index]['original_title'] ?? 'Default Name',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
              Text(
                trendingmovies[index]['overview'] ?? 'Default Name',
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              kHeight,
            ],
          ),
        ),
      ],
    );
  }
}
