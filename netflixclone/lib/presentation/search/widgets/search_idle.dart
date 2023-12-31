import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors.dart';
import 'package:netflixclone/main.dart';
import 'package:netflixclone/presentation/search/widgets/title.dart';

import '../../../core/constants.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/qWQSnedj0LCUjWNp9fLcMtfgadp.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => TopSearchItemTile(
                    index: index,
                  ),
              separatorBuilder: (context, index) => kHeight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final int index;
  const TopSearchItemTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.4,
          height: 75,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://image.tmdb.org/t/p/w500${releasedinpastyearmovies[index]['backdrop_path']}',
              ),
            ),
          ),
        ),
        kWidth,
        Expanded(
          child: Text(
            releasedinpastyearmovies[index]['title'] ?? 'Default Name',
            style: const TextStyle(
              color: kWhite,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis
            ),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kWhite,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kWhite,
            ),
          ),
        ),
      ],
    );
  }
}
