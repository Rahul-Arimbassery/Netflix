import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 180,
      decoration: BoxDecoration(
        borderRadius:kRadius10,
        image: const DecorationImage(
          image: NetworkImage(
              'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/sQleNHhKl32QFnSlahb5IHDWcDq.jpg'),
        ),
      ),
    );
  }
}