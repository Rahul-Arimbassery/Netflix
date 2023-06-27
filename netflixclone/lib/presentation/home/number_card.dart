import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/main.dart';

import '../../core/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;
  final List array;
  const NumberCard({super.key, required this.index, required this.array});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Container(
              margin: const EdgeInsets.all(5),
              width: 140,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/w500${array[index]['poster_path']}'),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 3,
          bottom: 0,
          child: BorderedText(
            strokeWidth: 2.0,
            strokeColor: Colors.white,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 100,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
