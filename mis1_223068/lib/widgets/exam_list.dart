import 'package:flutter/material.dart';
import '../models/exam.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;
  final VoidCallback onTap;

  const ExamCard({super.key, required this.exam, required this.onTap});

 
  String formatDate(DateTime dateTime) {
    return '${dateTime.day.toString().padLeft(2, '0')}.'
           '${dateTime.month.toString().padLeft(2, '0')}.'
           '${dateTime.year}';
  }

 
  String formatTime(DateTime dateTime) {
    return '${dateTime.hour.toString().padLeft(2, '0')}:'
           '${dateTime.minute.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final isPast = exam.isPast();

    Color cardBackgroundColor =
        isPast ? const Color.fromARGB(255, 241, 167, 167) : const Color.fromARGB(255, 153, 186, 239);
    Color cardBorderColor =
        isPast ? const Color.fromARGB(255, 231, 120, 120) : const Color.fromARGB(255, 40, 123, 238);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: cardBackgroundColor,
          border: Border.all(color: cardBorderColor, width: 4),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exam.subjectName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoMono',
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Date: ${formatDate(exam.dateTime)}',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Time: ${formatTime(exam.dateTime)}',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Rooms: ${exam.rooms.join(', ')}',
              style: const TextStyle(fontSize: 16),
            ),
            if (isPast)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: const [
                    Icon(Icons.check_circle, size: 18),
                    SizedBox(width: 6),
                    Text(
                      "Exam is past",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
