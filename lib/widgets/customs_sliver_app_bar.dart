import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network('https://obsproject.com/media/pages/blog/youtube-becomes-premier-sponsor-of-the-obs-project/e31fc69deb-1618879601/yt_logo_mono_dark_small.png'),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.cast),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          iconSize: 40,
          icon: const CircleAvatar(foregroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlHidJs9A2sNkuM9gCih3fO49j6D8gEAZuzg&usqp=CAU'),),
          onPressed: () {},
        ),
      ],
    );
  }
}