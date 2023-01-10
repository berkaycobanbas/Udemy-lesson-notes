import 'dart:io';

main(List<String> args) {
  print("Please enter your name ");
  String? name = stdin.readLineSync();
  print("Enter name:$name");

  print("Please enter your age");
  int? age = int.parse(stdin.readLineSync()!);
  print("Enter age $age");

  //Homework
  /*
  1-Make the algorithm that shows the result to the screen by finding the average of the student whose two grades are entered
  
  2-Write the algorithm that calculates the final price by adding 18% KDV to the product whose price is entered.
  */

  //Answers
  // 1-
  print("Please enter the first note");
  int? firstNote = int.parse(stdin.readLineSync()!);
  print("Please enter the second note");
  int? secondNote = int.parse(stdin.readLineSync()!);
  print("The average of your two exams = ${(firstNote + secondNote) / 2}");

// 2-
  print("Enter the product price");
  int? productPrice = int.parse(stdin.readLineSync()!);

  print("Product price including KDV = ${productPrice * 1.18}");
}
