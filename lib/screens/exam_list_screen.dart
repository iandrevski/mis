import 'package:flutter/material.dart';
import '../models/exam.dart';
import 'exam_detail_screen.dart';

class ExamListScreen extends StatelessWidget {
  final List<Exam> exams = [
    Exam(subject: 'Бази на податоци', date: '15.12.2025', time: '10:00', room: 'АМФ 1'),
    Exam(subject: 'Мобилни системи', date: '18.12.2025', time: '12:00', room: 'ЛАБ 2'),
    Exam(subject: 'Вештачка интелигенција', date: '22.12.2025', time: '09:00', room: 'АМФ 3'),
    Exam(subject: 'Мрежи', date: '25.12.2025', time: '11:30', room: 'АМФ 2'),
    Exam(subject: 'Дискретна математика', date: '29.12.2025', time: '08:00', room: 'АМФ 4'),
    Exam(subject: 'Оперативни системи', date: '03.01.2026', time: '13:00', room: 'ЛАБ 1'),
    Exam(subject: 'Компјутерска графика', date: '07.01.2026', time: '09:30', room: 'АМФ 1'),
    Exam(subject: 'Машинско учење', date: '10.01.2026', time: '10:00', room: 'АМФ 2'),
    Exam(subject: 'Веб програмирање', date: '13.01.2026', time: '11:00', room: 'ЛАБ 3'),
    Exam(subject: 'Информациска безбедност', date: '16.01.2026', time: '08:30', room: 'АМФ 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Распоред за испити - 213192'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          final exam = exams[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: const Icon(Icons.book, color: Colors.blue),
              title: Text(exam.subject, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('${exam.date} | ${exam.time}\Просторија: ${exam.room}'),
              isThreeLine: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExamDetailScreen(exam: exam),
                  ),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.blueAccent,
        child: Text(
          'Вкупно испити: ${exams.length}',
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
