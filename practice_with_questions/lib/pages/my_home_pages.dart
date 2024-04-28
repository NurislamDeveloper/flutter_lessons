

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:gap/gap.dart';
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
void forAnwers(bool isTrueAnswers) {
  setState(() {
    if(all[count].anwers == isTrueAnswers ) {
    trueAnwers++;
    }else {
      falseAswers++;
    }
  });
}
  void next() {
    setState(() {
      count++;
    });
    if (count == all.length ) {
      count = 0;
    
      trueAnwers = 0;
      falseAswers = 0;
    }
    
  }

  @override
  Widget build(BuildContext context) {
    //     double width = MediaQuery.of(context).size.width;
    // double heihth = MediaQuery.of(context).size.height;

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
              colorOfText: Colors.white,
              sizeOfText: 25,
              color: Colors.green,
              onTap: () {
                next();
                forAnwers(true);
              },
            ),

            MyButtom(
              textToAnwers: 'false',
              colorOfText: Colors.white,
              sizeOfText: 25,
              color: Colors.red,
              onTap: () {
                next();
                forAnwers(false);
              },
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
        Padding(
          padding:const  EdgeInsets.only(right: 20),
          child: Container(
            height: 40,
            width: 60,
            color: Colors.orangeAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  trueAnwers.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                  
                  ///here I want to invoke tih  themdara  ////////////////////////////
                ),
                const VerticalDivider(
                  color: Colors.white,
                ),
                Text(
                  falseAswers.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
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
    required this.colorOfText,
    required this.sizeOfText,

  });
  final String textToAnwers;
  final Color color;
  final Function() onTap;
  final Color colorOfText;
  final double sizeOfText;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
           fixedSize: const Size(120, 40),  //in here I can  control the size of elevetedButtom 
      ),
      onPressed: onTap,
      child: Text(
        textToAnwers,
        style: TextStyle(
          color: colorOfText,
          fontSize: sizeOfText,
        ),
      ),
    );
  }
}
