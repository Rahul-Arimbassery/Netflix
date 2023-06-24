import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/widgets/video_widget.dart';

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 450,
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
            height: 450,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(),
                kHeight,
                Row(
                  children: [
                    Text(
                      'TALL GIRL 2',
                      style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        letterSpacing: -5,
                      ),
                    ),
                    SizedBox(width: 140),
                    Icon(
                      Icons.notifications,
                      color: kWhite,
                      size: 20,
                    ),
                    kWidth,
                    kWidth,
                    kWidth,
                    Icon(Icons.info_outline, color: kWhite, size: 20),
                    kWidth,
                  ],
                ),
                kHeight,
                Text('Coming on Friday'),
                kHeight,
                Text(
                  'Tall Girl 2',
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
                
              ],
            )),
      ],
    );
  }
}
