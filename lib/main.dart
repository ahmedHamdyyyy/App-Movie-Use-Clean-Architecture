import 'package:clean2/TestingScreen.dart';
import 'package:clean2/core/services/services.dart';
import 'package:clean2/moveis/presentation/screen/movies_screen.dart';
import 'package:flutter/material.dart';

import 'moveis/data/datasource/Movie_remote_datasource.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
  //MovieRemoteDataSource movieRemoteDataSource=MovieRemoteDataSource();
 //var re=movieRemoteDataSource.getNowPlayingMovies();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade900,
      ),
      home:  const TestingScreen(),
    );
  }
}


