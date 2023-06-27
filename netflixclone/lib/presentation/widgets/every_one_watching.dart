import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/main.dart';
import 'package:netflixclone/presentation/main_page/widgets/custom_button_widget.dart';
import 'package:netflixclone/presentation/widgets/video_widget.dart';

class EveryOneWatchingWidget extends StatelessWidget {
  final int index;
  const EveryOneWatchingWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          Text(
            latestmovies[index]['original_title'] ?? 'Default Name',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight,
           Text(
            latestmovies[index]['overview'] ?? 'Default Name',
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          kHeight,
          VideoWidget(
            array: latestmovies,
            index: index,
          ),
          kHeight,
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButtonWidget(
                icon: Icons.share,
                title: '',
              ),
              kWidth,
              CustomButtonWidget(
                icon: Icons.add,
                title: '',
              ),
              kWidth,
              CustomButtonWidget(
                icon: Icons.play_arrow,
                title: '',
              ),
              kWidth,
            ],
          )
        ],
      ),
    );
  }
}
