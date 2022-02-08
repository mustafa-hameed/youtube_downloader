import 'package:flutter/material.dart';
import 'package:youtube_downloader/widgets/customs_sliver_app_bar.dart';
import 'package:youtube_downloader/widgets/video_card.dart';

import 'data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 8),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context,index) {

                  final video = videos[index];

                  return VideoCard(video: video);
                }, childCount: videos.length
                ),
            ),
          )
        ],
      ),
    );
  }
}


