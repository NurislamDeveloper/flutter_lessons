import 'package:bm_calculate/features/presentation/constans/app_text_style.dart';
import 'package:flutter/material.dart';

class buttomBar extends StatelessWidget {
  const buttomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final  width = MediaQuery.of(context).size.width;
    // final  height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
 showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Card(
     margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 100),
     color: const Color(0xff0b0120),
     child:Column(
      children: [
            const Text("everythin okey"),
            const Text("24.2"),
            const Text("with youe helth good : You going relly good job keep going"),
            ElevatedButton(onPressed: () {}, child: const Text("repeat")),

      ],
     ),
        );
        // return AlertDialog(
        //   content:SizedBox(
        //     width: width,
        //     height: height * 0.2,
            
        //   ),
        //    contentPadding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100), // Adjust the padding as needed
        //   title: const Text('Result'),
        //   actions: <Widget>[
            
        //   ],
        // );
      },
    );
  },
      
      child: Container(
        height: 70,
        color: Colors.red,
        child:const  Center(
          child: Text(
            "Calculate",
            style:  AppTextStule.heightStyle      
      
          ),
        ),
      ),
    );
  }
}
