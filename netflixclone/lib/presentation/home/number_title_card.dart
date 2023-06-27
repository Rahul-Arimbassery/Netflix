import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/home/number_card.dart';
import 'package:netflixclone/presentation/widgets/main_title.dart';

import '../../core/constants.dart';

class NumberTitleCard extends StatelessWidget {
  final List array;
  const NumberTitleCard({
    super.key,
    required this.array,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: 'Top 10 TV Shows in India Today'),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => NumberCard(
                index: index,
                array: array,
              ),
            ),
          ),
        )
      ],
    );
  }
}
