import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pratice_svg/features/presentions/constans/style_of_app.dart';
import 'package:pratice_svg/features/presentions/constans/text.dart';
import 'package:pratice_svg/features/presentions/widgets/all_picure.dart';
import 'package:pratice_svg/features/presentions/widgets/cards_profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset('assets/app.svg'),
        centerTitle: true,
        title: const Text(AllText.textOfTitle, style: App.titleApp),
      ),
      body:const  Padding(
        padding:  EdgeInsets.only(top: 25),
        child: Column(
          children: [
            CardWidget(),
            SizedBox(height: 30,),
            AllPicure(),
             Text(
              AllText.textOfBody,
              style: App.bodyText,
            ),
          ],
        ),
      ),
    );
  }
}



