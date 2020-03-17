import '../question.dart';

class questionBank {
  List<List<Question>> _questionBank = [
    [
      Question("Gumbo is a stew that originated in Louisiana.", true),
      Question("French is an official language in Canada.", false),
      Question("Adolf Hitler was born in Australia. ", false),
      Question(
          "Scotland voted to become an independent country during the referendum from September 2014.",
          false),
      Question(
          "Vietnam's national flag is a red star in front of a yellow background.",
          false)
    ],
    [
      Question(
          "The Berenstein Bears is the correct spelling of the educational childrens book series name.",
          false),
      Question("The book 1984 was published in 1949.", true),
      Question("Stephen Chbosky wrote the book The Perks of Being A Wallflower",
          true),
      Question(
          "Elementary, my dear Watson&quot; is a phrase that is never truly said within the Conan Doyle books of Sherlock Holmes.",
          true),
      Question(
          "The Harry Potter series of books, combined, are over 1,000,000 words in length.",
          true)
    ]
  ];

  List<List<Question>> getQuestionBank() {
    return _questionBank;
  }
}
