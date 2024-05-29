import 'package:flutter/material.dart';
import 'package:practice_wit_http/featrures/data/data/information.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Information? information;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: information().fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AllText(first: snapshot.body!.name,);

          }else if (snapshot.hasError) {
            return Center(child: Text(snapshot.hasError.toString()),);
          }else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }

}

class AllText extends StatelessWidget {
  const AllText({
    super.key,
    required this.first,
    required this.second,
    required this.third,
    required this.fourth,
  });
  final int first;
 final String second ;
 final String  third;
 final String fourth;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(first.toString()),
        Text(second),
        Text(third),
        Text(fourth)
    
      ],
    );
  }
}
