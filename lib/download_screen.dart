import 'package:flutter/material.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  _DownloadScreenState createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  final TextEditingController _urlTextFieldController = TextEditingController();
  String videoTitle = '';
  String videoPublishDate = '';
  String videoID = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: _urlTextFieldController,
              onChanged: (val) {
                getVideoInfo(val);
              },
                decoration: const InputDecoration(label: Text('Paste youtube video url here')),
              ),
            ),
            Image.network('https://img.youtube.com/vi/$videoID/0.jpg',
            height: 250,
            ),
            Text(videoTitle),
            Text(videoPublishDate),
            TextButton.icon(onPressed: () {}, icon: const Icon(Icons.download),
                label: Text('Start Dowload'))
          ],
        ),
      ),
    );
  }
  //functions
Future<void> getVideoInfo(url) async {
    var youtubeInfo = YoutubeExplode();
    var video = await youtubeInfo.videos.get(url);
    setState(() {
      videoTitle = video.title;
      videoPublishDate = video.publishDate.toString();
      videoID = video.id.toString();

    });
}
}
