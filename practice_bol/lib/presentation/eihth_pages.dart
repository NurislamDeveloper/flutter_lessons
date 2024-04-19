import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_bol/data/models/test_model.dart';

class EihthPages extends StatelessWidget {
  const EihthPages(
      {super.key,
      required this.allName,
      required this.allSurname,
      required this.allAge,
      required this.allCity,
      required this.allMajor,
      required this.allPhoto});
  final Stundents allName;
  final Stundents allSurname;
  final Stundents allAge;
  final Stundents allCity;
  final Stundents allMajor;
  final Stundents allPhoto;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(allName.name),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Card(
              color: Colors.grey.shade300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 230, top: 30),
                    child: SizedBox(
                      height: 150,
                      width: 200,
                      child: Image.asset(
                        allPhoto.photoOfStundent,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 150,
                      
                    ),
                    child: Text(
                      allSurname.surname,
                    ),
                  ),
                  // Text(
                  //  "$allAge.age" ,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 150,
                    ),
                    child: Text(
                      allCity.city,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 150,
                    ),
                    child: Text(
                      allMajor.maijor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
