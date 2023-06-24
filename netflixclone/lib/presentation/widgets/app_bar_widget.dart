import 'package:flutter/material.dart';

import '../../core/constants.dart';

class AppBArWidget extends StatelessWidget {
  const AppBArWidget({super.key,required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
           Text(
            title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.cast,
            color: Colors.white,
          ),
          kWidth,
          Container(
            width: 25,
            height: 25,
            color: Colors.blue,
          ),
          kWidth,
        ],
      ),
    );
  }
}
