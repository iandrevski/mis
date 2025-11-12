import 'package:flutter/material.dart';
import '../models/exam.dart';

class ExamDetailScreen extends StatelessWidget {
  final Exam exam;

  const ExamDetailScreen({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(exam.subject),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Предмет: ${exam.subject}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Text('Датум: ${exam.date}', style: const TextStyle(fontSize: 18)),
            Text('Време: ${exam.time}', style: const TextStyle(fontSize: 18)),
            Text('Просторија: ${exam.room}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                child: const Text('Назад кон листата'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
