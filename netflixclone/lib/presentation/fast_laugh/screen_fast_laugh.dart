import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/fast_laugh/widget/video_list_items.dart';

class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index){
          return VideoListItem(index: index,);
        }),

      ),),
    );
  }
}