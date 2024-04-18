class Test {
 const Test ({required this.question,required this.answer});
  final  String question;
  final bool answer;
}

Test first = const Test(question: 'is in Kyrgystan seven regions ?', answer: true);
Test second = const Test(question: "in kyrgyztan live seven milion people ? ", answer: true);
Test third = const Test(question: "is mountains moves", answer: false);
Test fourth = const Test(question: "is crocodile fly", answer: false);
Test fifth = const Test(question: "is Flutter cooperating with Microsoft ?", answer: false);

List <Test> whole = [
first,
second,
third,
fourth,
fifth,
];