import '../models/exam.dart';

List<Exam> getExamList() {
  return [
    Exam(
      subjectName: "Strukturno programiranje",
      dateTime: DateTime(2025, 10, 25, 12, 0),
      rooms: ["lab 138"],
    ),
    Exam(
      subjectName: "Diskretna matematika",
      dateTime: DateTime(2025, 10, 27, 10, 20),
      rooms: ["lab138", "lab215"],
    ),
    Exam(
      subjectName: "Biznis i menadzment",
      dateTime: DateTime(2025, 11, 1, 11, 0),
      rooms: ["lab138", "lab215","lab200ab", "lab200v"],
    ),
    Exam(
      subjectName: "Objektno-orientirano programiranje",
      dateTime: DateTime(2025, 11, 17, 12, 30),
      rooms: ["lab200ab", "lab200v"],
    ),
    Exam(
      subjectName: "Bazi na podatoci",
      dateTime: DateTime(2025, 11, 18, 8, 0),
      rooms: ["lab138", "lab215"],
    ),
    Exam(
      subjectName: "E-vlada",
      dateTime: DateTime(2025, 11, 20, 17, 0),
      rooms: ["lab200ab", "lab200v"],
    ),
    Exam(
      subjectName: "Elektronska i mobilna trgovija",
      dateTime: DateTime(2025, 11, 23, 11, 30),
      rooms: ["lab200ab", "lab200v","lab138", "lab215"],
    ),
    Exam(
      subjectName: "Voved vo kompjuterskite nauki",
      dateTime: DateTime(2025, 11, 24, 11, 30),
      rooms: ["lab2", "lab3"],
    ),
    Exam(
      subjectName: "Algoritmi i podatocni strukturi",
      dateTime: DateTime(2025, 12, 3, 11, 30),
      rooms: ["lab200ab", "lab200v","lab138", "lab215","lab2", "lab3"],
    ),
  ];
}
