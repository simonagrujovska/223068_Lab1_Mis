import 'package:flutter/material.dart';
import '../models/exam.dart';

class ExamDetailScreen extends StatelessWidget {
  final Exam exam;

  const ExamDetailScreen({super.key, required this.exam});

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

    Color backgroundColor =
        isPast ? const Color.fromARGB(255, 241, 167, 167) : const Color.fromARGB(255, 153, 186, 239);
    Color borderColor =
        isPast ? const Color.fromARGB(255, 231, 120, 120) : const Color.fromARGB(255, 40, 123, 238);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detali za ispit', style: TextStyle(fontFamily: 'Courier')),
        backgroundColor: const Color.fromARGB(255, 153, 186, 239),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: borderColor, width: 5),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 8,
                offset: const Offset(3, 6),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exam.subjectName,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoMono',
                ),
              ),
              const SizedBox(height: 16),
              Text('Date: ${formatDate(exam.dateTime)}', style: const TextStyle(fontSize: 18)),
              Text('Time: ${formatTime(exam.dateTime)}', style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 12),
              Text('Rooms: ${exam.rooms.join(', ')}', style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              Row(
                children: [
                  Icon(isPast ? Icons.check_circle : Icons.timer, size: 24),
                  const SizedBox(width: 10),
                  Text(
                    isPast ? 'Exam is past' : 'Remaining: ${exam.getTimeRemaining()}',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
