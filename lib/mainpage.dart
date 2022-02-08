import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_downloader/download_screen.dart';
import 'package:youtube_downloader/home_page.dart';
import 'data.dart';

final selectedVideoProvider = StateProvider<Video?>((ref) => null);

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _screens = [
    const HomePage(),
    const Scaffold(body: Center(child: Text('Explore Screen'),),),
    const DownloadScreen(),
    const Scaffold(body: Center(child: Text('Subscriptions Screen'),),),
    const Scaffold(body: Center(child: Text('Library Screen'),),),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:
          _screens
            .asMap()
            .map((i, screen) => MapEntry(i, Offstage(
            offstage: _selectedIndex !=i,
            child: screen,
          )))
          .values
          .toList(),

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
          activeIcon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined),
          label: 'Explore',
          activeIcon: Icon(Icons.explore),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Add',
          activeIcon: Icon(Icons.add_circle),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions_outlined),
          label: 'Subscriptions',
          activeIcon: Icon(Icons.subscriptions),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library_outlined),
          label: 'Library',
          activeIcon: Icon(Icons.video_library),
        ),
      ],
      ),
    );
  }
}
