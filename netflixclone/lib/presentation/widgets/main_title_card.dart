import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/widgets/main_card.dart';
import 'package:netflixclone/presentation/widgets/main_title.dart';

import '../../core/constants.dart';
import '../../main.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  final List array;
  const MainTitleCard({super.key, required this.title, required this.array});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => MainCard(
                      index: index,
                      array:array,
                    ),
                  ),
                ),
        )
      ],
    );
  }
}
