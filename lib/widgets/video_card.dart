import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:youtube_downloader/data.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:youtube_downloader/main_page.dart';
import 'package:youtube_downloader/video_screen.dart';
class VideoCard extends StatelessWidget {
  final Video video;
  const VideoCard({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read(selectedVideoProvider).state = video;
        //print(video.title);
        Navigator.push(context, MaterialPageRoute(builder: (context) => const VideoScreen()));
      },
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                video.thumbnailUrl,
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    color: Colors.black,
                    child: Text(
                      video.duration,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.white),
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  foregroundImage: NetworkImage(video.channel.channelImageUrl),
                ),
                const SizedBox(width: 30,),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    Flexible(
                        child: Text(video.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme.bodyText1!
                              .copyWith(fontSize: 15),
                        )
                    ),
                    Flexible(
                        child: Text(
                          '${video.channel.channelName} | ${video.viewCount} | ${timeago.format(video.timestamp)}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme.caption!
                              .copyWith(fontSize: 14),
                        )
                    ),

                  ],
                  ),
                ),
                const Icon(Icons.more_vert,size: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
