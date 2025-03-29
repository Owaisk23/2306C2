import 'dart:io';

void main() {
  List<String> courseNames = [];
  List<double> courseMarks = [];
  List<dynamic> studentInfo = [];
  int subjectCount;
  double totalScore = 0;
  double totalMarks = 0;
  double percentage = 0;
  String Grade;

  print("Please enter your Enrollment Number:");
  studentInfo.add(stdin.readLineSync() ?? "Not Provided");
  print("Enter your Full Name:");
  studentInfo.add(stdin.readLineSync() ?? "Not Provided");

  print("Enter your Age:");
  studentInfo.add(stdin.readLineSync() ?? "Not Provided");
  print("How many subjects do you have?");
  subjectCount = int.parse(stdin.readLineSync() ?? '0');
  totalMarks = subjectCount * 100;

  for (var i = 0; i < subjectCount; i++) {
    print("Enter the name of subject ${i + 1}: ");
    courseNames.add(stdin.readLineSync() ?? "Not Provided");
    print("Enter marks obtained in ${courseNames[i]}: ");
    courseMarks.add(double.parse(stdin.readLineSync() ?? "0"));

    totalScore += courseMarks[i];
  }

  percentage = (totalScore / totalMarks) * 100;
  if (percentage >= 80 && percentage <= 100) {
    Grade = "A+";
  } else if (percentage >= 70) {
    Grade = "A";
  } else if (percentage >= 60) {
    Grade = "B";
  } else if (percentage >= 50) {
    Grade = "C";
  } else if (percentage >= 40) {
    Grade = "D";
  } else {
    Grade = "F";
  }

  print("\nStudent Result Summary:");
  print("Enrollment No: ${studentInfo[0]}");
  print("Name: ${studentInfo[1]}");
  print("Age: ${studentInfo[2]}");
  print("Percentage: ${percentage.toStringAsFixed(2)}%");
  print("Grade: $Grade");
}