class Exam {
  final String subjectName;
  final DateTime dateTime;
  final List<String> rooms;

  Exam({
    required this.subjectName,
    required this.dateTime,
    required this.rooms,
  });

  bool isPast() {
    return dateTime.isBefore(DateTime.now());
  }

  String getTimeRemaining() {
    final now = DateTime.now();
    final difference = dateTime.difference(now);

    if (difference.isNegative) {
      return "Ispitot e zavrsen";
    }

    final days = difference.inDays;
    final hours = difference.inHours % 24;

    return "$days dena, $hours casa";
  }
}
