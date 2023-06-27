import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';

class MainCard extends StatelessWidget {
  final int index;
  final List array;
  const MainCard({super.key, required this.index, required this.array});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: DecorationImage(
          image: NetworkImage(
            'https://image.tmdb.org/t/p/w500${array[index]['poster_path']}',
          ),
        ),
      ),
    );
  }
}
