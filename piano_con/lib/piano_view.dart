import 'package:flutter/material.dart';

class PianaView extends StatelessWidget {
  const PianaView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> notes = [
      "f1",
      "f2",
      "f3",
      "f4",
      "f5",
      "f6",
      "f7",
      "f1",
      "f2",
      "f3",
      "f4",
      "f5",
      "f6",
      "f7",
    ];

    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: 14,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(
                        2,
                      ),
                      width: 62,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        color: Colors.grey.withOpacity(
                          0.3,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            notes[index],
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Positioned(
                  left: 39,
                  child: Container(
                    // color: Colors.black,
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          5,
                        ),
                        bottomRight: Radius.circular(
                          5,
                        ),
                      ),
                    ),
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(
                        notes[0],
                        style:const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 107,
                  child: Container(
                    // color: Colors.black,
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          5,
                        ),
                        bottomRight: Radius.circular(
                          5,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(
                        notes[1],
                        style:const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ],
                  ),
                ),
                ),
                Positioned(
                  left: 237,
                  child: Container(
                    // color: Colors.black,
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          5,
                        ),
                        bottomRight: Radius.circular(
                          5,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(
                        notes[2],
                        style:const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ],
                  ),
                ),
                ),
                Positioned(
                  left: 305,
                  child: Container(
                    // color: Colors.black,
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          5,
                        ),
                        bottomRight: Radius.circular(
                          5,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(
                        notes[3],
                        style:const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ],
                  ),
                ),
                ),
                Positioned(
                  left: 372,
                  child: Container(
                    // color: Colors.black,
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          5,
                        ),
                        bottomRight: Radius.circular(
                          5,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(
                        notes[4],
                        style:const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ],
                  ),
                ),
                ),
                Positioned(
                  right: 360,
                  child: Container(
                    // color: Colors.black,
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          5,
                        ),
                        bottomRight: Radius.circular(
                          5,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(
                        notes[5],
                        style:const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ],
                  ),
                ),
                ),
                Positioned(
                  right: 295,
                  child: Container(
                    // color: Colors.black,
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          5,
                        ),
                        bottomRight: Radius.circular(
                          5,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(
                        notes[6],
                        style:const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ],
                  ),
                ),
                ),
                Positioned(
                  right: 160,
                  child: Container(
                    // color: Colors.black,
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          5,
                        ),
                        bottomRight: Radius.circular(
                          5,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(
                        notes[7],
                        style:const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ],
                  ),
                ),
                ),
                Positioned(
                  right: 95,
                  child: Container(
                    // color: Colors.black,
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          5,
                        ),
                        bottomRight: Radius.circular(
                          5,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(
                        notes[8],
                        style:const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ],
                  ),
                ),
                ),
                Positioned(
                  right: 30,
                  child: Container(
                    // color: Colors.black,
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          5,
                        ),
                        bottomRight: Radius.circular(
                          5,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(
                        notes[9],
                        style:const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ],
                  ),
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  AppBar myAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "My piano App",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }
}
