import 'package:flutter/material.dart';
import 'package:practice_with_dio/featrures/data/servise/data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    information = Information();
  }

  Information? information;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: FutureBuilder(
        future: information!.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else if (snapshot.hasData) {
            return AllText(
              first: snapshot.data!.base,
              second: snapshot.data!.name,
              third: snapshot.data!.main,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class AllText extends StatelessWidget {
  const AllText(
      {super.key,
      required this.first,
      required this.second,
      required this.third});
  final String first;
  final String second;
  final String third;
  @override
  Widget build(BuildContext context) {
    return Column(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(first,),
            Text(second),
            Text(third),
          ],
        ),
      ],
    );
  }
}
