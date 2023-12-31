import 'package:clean2/moveis/presentation/screen/movies_screen.dart';
import 'package:flutter/material.dart';

class TestingScreen extends StatefulWidget {
  const TestingScreen({Key? key}) : super(key: key);

  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child:const Text("دخووول",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),) ,
          onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder: (context){
              return const MainMoviesScreen();
            }) );
          } ,
        ),
      ),
    );
  }
}
