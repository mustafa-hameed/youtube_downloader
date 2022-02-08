import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class Channel {
  final String channelName;
  final String channelImageUrl;

  const Channel({
    required this.channelName,
    required this.channelImageUrl,
  });
}

const Channel channel = Channel(
  channelName: 'Mustafa Hameed',
  channelImageUrl:
      'https://yt3.ggpht.com/jO-G69Vg-na5Vx8OO5gs9LbdQCYuoikeGXZN649zW6V5P77q-W7xhsoDt7d3urMho_6mw7Pd=s48-c-k-c0x00ffffff-no-rj',
);

class Video {
  final String id;
  final Channel channel;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;

  const Video({
    required this.id,
    required this.channel,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
  });
}

final List<Video> videos = [
  Video(
      id: 'yoFha4JA-Kg',
      channel: channel,
      title: 'Dr Cube Mobile Application',
      thumbnailUrl: 'https://img.youtube.com/vi/yoFha4JA-Kg/0.jpg',
      duration: '1:14',
      timestamp: DateTime(2021, 8, 20),
      viewCount: '2K'),
  Video(
    channel: channel,
    id: 'ZZpwCo3QC4s',
    title: 'Mr Ali Sadiq E-Learning Applictaion',
    thumbnailUrl: 'https://img.youtube.com/vi/ZZpwCo3QC4s/0.jpg',
    duration: '2:16',
    timestamp: DateTime(2021, 10, 26),
    viewCount: '1K',
  ),
  Video(
    id: 'wVqk44B1TtY',
    channel: channel,
    title: 'Mirmaz for digital solutions Website',
    thumbnailUrl: 'https://img.youtube.com/vi/wVqk44B1TtY/0.jpg',
    duration: '1:22',
    timestamp: DateTime(2020, 9, 12),
    viewCount: '3K',
  ),
  Video(
    id: 'QAnN_CmLon4',
    channel: channel,
    title: 'تطبيق الاستاذ حمزة الجابري',
    thumbnailUrl: 'https://img.youtube.com/vi/QAnN_CmLon4/0.jpg',
    duration: '2:09',
    timestamp: DateTime(2020, 9, 12),
    viewCount: '3K',
  ),
  Video(
    id: 'BZL7Ohlm8t4',
    channel: channel,
    title: 'تطبيق الاستاذ هشام المعموري',
    thumbnailUrl: 'https://img.youtube.com/vi/BZL7Ohlm8t4/0.jpg',
    duration: '3:34',
    timestamp: DateTime(2020, 9, 12),
    viewCount: '3K',
  ),
  Video(
    id: 'cb4ku4uXyyU',
    channel: channel,
    title: 'Newton Academy user login',
    thumbnailUrl: 'https://img.youtube.com/vi/cb4ku4uXyyU/0.jpg',
    duration: '3:40',
    timestamp: DateTime(2020, 9, 12),
    viewCount: '3K',
  ),
];


