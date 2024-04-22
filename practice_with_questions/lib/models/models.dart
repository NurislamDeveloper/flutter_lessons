class Models{
   Models({required this.questions, required this.anwers});
  final String questions;
  final bool anwers;
}/// here I need create new object and add two fiels with andwers and questions 
Models first = Models(questions: "Is in Kysryztan secen region", anwers: true);
Models second= Models(questions: "Is in Kysryztan secen region", anwers: true);
Models third = Models(questions: "Is in Kysryztan secen region", anwers: true);
Models fourth = Models(questions: "Is in Kysryztan secen region", anwers: true);
Models fifth = Models(questions: "Is in Kysryztan secen region", anwers: true);
Models sizth = Models(questions: "Is in Kysryztan secen region", anwers: true);


List <Models> all = [
first,
second,
third,
fourth,
fifth,
sizth,
];