import 'package:flutter/material.dart';
import 'package:practice_with_questions/constans/app_text_stulyies.dart';
import 'package:practice_with_questions/models/models.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(
    this.textOfAppbar, {
    super.key,
  });
  final String textOfAppbar;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  int trueAnwers = 0;
  int falseAswers = 0;
  void next(bool isTrue) {
    setState(() {
      count++;
    });
    if (count == all.length) {
      count = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myApp(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              all[count].questions,

              /// I have to invoke the list name and index
              style: AppTextStyles.questionsStyle,
            ),
            MyButtom(
              textToAnwers: 'True',
              color: Colors.green,
              onTap: () {},
            ),
            MyButtom(
              textToAnwers: 'false',
              color: Colors.red,
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: List.generate(
                6,
                (index) => const Icon(
                  Icons.done,
                  color: Colors.teal,
                ),
              ),
            )

            /// I need to give text and color to the buttom green and red that't why I need create files
          ],
        ),
      ),
    );
  }

  AppBar myApp() {
    return AppBar(
      centerTitle: true,
      title: Text(
        widget.textOfAppbar,
      ),
      actions: [
        Container(
          color: Colors.grey,
          child: Row(
            children: [
              Text(
                trueAnwers.toString(),
                style: TextStyle(fontSize: 24),   ///here I want to invoke tih  themdara  ////////////////////////////
              ),
              const VerticalDivider(
                color: Colors.white,
              ),
              Text(
                falseAswers.toString(),
              ),
            ],
          ),
        ),
      ], /////here I want to use MediaQuery  ///////////////////////////////////////////////////////////////////////////////////////////
    );
  }
}

class MyButtom extends StatelessWidget {
  const MyButtom({
    super.key,
    required this.textToAnwers,
    required this.color,
    required this.onTap,
  });
  final String textToAnwers;
  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: onTap,
      child: Text(
        textToAnwers,
      ),
    );
  }
}
