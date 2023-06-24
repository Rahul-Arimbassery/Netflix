import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/main_page/widgets/custom_button_widget.dart';
import 'package:netflixclone/presentation/widgets/video_widget.dart';

class EveryOneWatchingWidget extends StatelessWidget {
  const EveryOneWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Text(
          'Friends',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        kHeight,
        VideoWidget(),
        kHeight,
        Row(
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
    );
  }
}
