import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_downloader/splash_screen.dart';
import 'main_page.dart';

void main() {
  runApp( const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube Downloader',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
        ),
      ),
      home: SplashScreenWidget(homePage: const MainPage(), logo: Logo(), slogan: 'slogan')
    );
  }
}

class Logo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Image.network('https://obsproject.com/media/pages/blog/youtube-becomes-premier-sponsor-of-the-obs-project/e31fc69deb-1618879601/yt_logo_mono_dark_small.png',
      height: 200,width: 200,);
    // Image.network('https://obsproject.com/media/pages/blog/youtube-becomes-premier-sponsor-of-the-obs-project/e31fc69deb-1618879601/yt_logo_mono_dark_small.png');
  }
}