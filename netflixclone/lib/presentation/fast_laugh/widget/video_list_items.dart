// import 'package:flutter/material.dart';
// import 'package:netflixclone/core/colors.dart';
// import 'package:video_player/video_player.dart';

// class VideoListItem extends StatefulWidget {
//   final int index;
//   const VideoListItem({super.key, required this.index});

//   @override
//   State<VideoListItem> createState() => _VideoListItemState();
// }

// class _VideoListItemState extends State<VideoListItem> {
//   late VideoPlayerController _controller;
//   @override
//   void initState() {
//     _controller = VideoPlayerController.network(
//       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
//     )..initialize().then((_) {
//         setState(() {});
//       });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           color: Colors.accents[widget.index % Colors.accents.length],
//           child: Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.black.withOpacity(0.5),
//                     radius: 30,
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.volume_off,
//                         size: 30,
//                       ),
//                     ),
//                   ),
//                   const Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       CircleAvatar(
//                         radius: 30,
//                         backgroundImage: NetworkImage(
//                             "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg"),
//                       ),
//                       VideoActionsWidget(
//                           icon: Icons.emoji_emotions, title: 'LOL'),
//                       VideoActionsWidget(icon: Icons.add, title: 'My List'),
//                       VideoActionsWidget(icon: Icons.share, title: 'Share'),
//                       VideoActionsWidget(icon: Icons.play_arrow, title: 'play'),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class VideoActionsWidget extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   const VideoActionsWidget(
//       {super.key, required this.icon, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         children: [
//           Icon(
//             icon,
//             color: kWhite,
//             size: 30,
//           ),
//           Text(
//             title,
//             style: const TextStyle(
//               color: kWhite,
//               fontSize: 14,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:netflixclone/core/colors.dart';
// import 'package:video_player/video_player.dart';

// class VideoListItem extends StatefulWidget {
//   final int index;

//   const VideoListItem({super.key, required this.index});

//   @override
//   State<VideoListItem> createState() => _VideoListItemState();
// }

// class _VideoListItemState extends State<VideoListItem> {
//   late VideoPlayerController _videoController;

//   @override
//   void initState() {
//     super.initState();
//     _initializePlayer();
//   }

//   @override
//   void dispose() {
//     _videoController.dispose();
//     super.dispose();
//   }

//   Future<void> _initializePlayer() async {
//     _videoController = VideoPlayerController.network(
//       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
//     );
//     await _videoController.initialize();
//     _videoController.play();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           color: Colors.accents[widget.index % Colors.accents.length],
//           child: Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.black.withOpacity(0.5),
//                     radius: 30,
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.volume_off,
//                         size: 30,
//                       ),
//                     ),
//                   ),
//                   const Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       CircleAvatar(
//                         radius: 30,
//                         backgroundImage: NetworkImage(
//                             "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg"),
//                       ),
//                       VideoActionsWidget(
//                         icon: Icons.emoji_emotions,
//                         title: 'LOL',
//                       ),
//                       VideoActionsWidget(
//                         icon: Icons.add,
//                         title: 'My List',
//                       ),
//                       VideoActionsWidget(
//                         icon: Icons.share,
//                         title: 'Share',
//                       ),
//                       VideoActionsWidget(
//                         icon: Icons.play_arrow,
//                         title: 'Play',
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         if (_videoController != null && _videoController.value.isInitialized)
//           LayoutBuilder(
//             builder: (context, constraints) {
//               return SizedBox(
//                 width: constraints.maxWidth,
//                 height: constraints.maxHeight,
//                 child: AspectRatio(
//                   aspectRatio: _videoController.value.aspectRatio,
//                   child: VideoPlayer(_videoController),
//                 ),
//               );
//             },
//           ),
//       ],
//     );
//   }
// }

// class VideoActionsWidget extends StatelessWidget {
//   final IconData icon;
//   final String title;

//   const VideoActionsWidget(
//       {super.key, required this.icon, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         children: [
//           Icon(
//             icon,
//             color: Colors.white,
//             size: 30,
//           ),
//           Text(
//             title,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 14,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors.dart';
import 'package:video_player/video_player.dart';

class VideoListItem extends StatefulWidget {
  final int index;

  const VideoListItem({super.key, required this.index});

  @override
  State<VideoListItem> createState() => _VideoListItemState();
}

class _VideoListItemState extends State<VideoListItem> {
  List videoarray = [
    'https://player.vimeo.com/external/489633186.hd.mp4?s=94022c39ddfce1f4fdc29ffd4c86db5d85e03200&profile_id=174&oauth2_token_id=57447761',
    'https://player.vimeo.com/external/512206983.sd.mp4?s=57d97116e9a6b09fa547d2af96124e268718dc47&profile_id=165&oauth2_token_id=57447761',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://player.vimeo.com/external/512207213.sd.mp4?s=d5da097670bb1376fce81a087084db61747cf846&profile_id=165&oauth2_token_id=57447761',
    'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_10mb.mp4',
    'https://vod-progressive.akamaized.net/exp=1687887433~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F1806%2F13%2F334034343%2F1318498476.mp4~hmac=13ed48b342986a68d08e008888db14fcfe019762a8fb764fe35d2ffc10b649e7/vimeo-prod-skyfire-std-us/01/1806/13/334034343/1318498476.mp4',
    'https://player.vimeo.com/external/438840857.hd.mp4?s=1e5fb3a2b810577934134c729e4566fffe2afb85&profile_id=174&oauth2_token_id=57447761',
    'https://player.vimeo.com/external/478286159.sd.mp4?s=54866b05c4cf7b96647aaeed83034a970a7c9fd5&profile_id=165&oauth2_token_id=57447761',
    'https://player.vimeo.com/external/578218168.hd.mp4?s=f0f6c917a5990e02f7abc0a467330805b63b3ab4&profile_id=174&oauth2_token_id=57447761',
    'https://player.vimeo.com/external/538030529.hd.mp4?s=cef89d85b024c28c63831b50bd85b00afa6628c6&profile_id=174&oauth2_token_id=57447761',
  ];
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  Future<void> _initializePlayer() async {
    _videoController = VideoPlayerController.network(
      videoarray[widget.index],
    );
    await _videoController.initialize();
    _videoController.play();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (_videoController != null && _videoController.value.isInitialized)
          Positioned.fill(
            child: AspectRatio(
              aspectRatio: _videoController.value.aspectRatio,
              child: VideoPlayer(_videoController),
            ),
          ),
        SizedBox(
          //color: Colors.accents[widget.index % Colors.accents.length],
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.5),
                    radius: 30,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off,
                        size: 30,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg",
                        ),
                      ),
                      const VideoActionsWidget(
                        icon: Icons.emoji_emotions,
                        title: 'LOL',
                      ),
                      const VideoActionsWidget(
                        icon: Icons.add,
                        title: 'My List',
                      ),
                      const VideoActionsWidget(
                        icon: Icons.share,
                        title: 'Share',
                      ),
                      // VideoActionsWidget(
                      //   icon: Icons.play_arrow,
                      //   title: 'Play',
                      // ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _videoController.value.isPlaying
                                ? _videoController.pause()
                                : _videoController.play();
                          });
                        },
                        icon: Icon(
                          _videoController.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                              color: kWhite,
                              size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoActionsWidget(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
