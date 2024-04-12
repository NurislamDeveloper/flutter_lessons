import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  bool isTrue = false;

  void increment(int count) {
    setState(() {});
  }

  void decrement(count) {
    setState(() {});
  }

  void result() {
    if (count == 10 || count == -10) {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: Text("$count"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      count = 0;
      setState(() {});
    } else if (count >= 11) {
      setState(() {
        isTrue = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "F U N T I O N S",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Numbers: $count",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            const Gap(
              10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    decrement(count--);
                    result();
                  },
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
                const Gap(
                  20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    increment(count++);
                    result();
                    if (isTrue);
                  },
                  child: const Icon(
                    Icons.add,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Gap(
              20,
            ),
            const Text(
              "Hello",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
    );
  }
}
