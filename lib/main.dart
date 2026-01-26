import 'package:flutter/material.dart';
import 'grade_tool.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grade Tool',
      home: const GradeToolPage(title: 'Grading Scale'),
    );
  }
}

class GradeToolPage extends StatefulWidget {
  const GradeToolPage({super.key, required this.title});



  final String title;

  @override
  State<GradeToolPage> createState() => _GradeToolPageState();
}

class _GradeToolPageState extends State<GradeToolPage> {
  final TextEditingController _gradeController = TextEditingController();
  String _result = '';

  void _convertGrade() {
    setState(() {
      _result = GradeConverter.convertToGrade(_gradeController.text);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/grading_scale.jpg', width: 600, height: 240),
            Text('Number to letter grade conversion:\nDivide the number of points you received by the total number of points possible.\n'
                'Multiply the decimal by 100 to determine your grade as a percent.\n'
                'The letter grade will be decided by where the results land on the scale shown above.'),
            SizedBox(height: 20),
            SizedBox(
              width: 325,
              child: TextField(
                controller: _gradeController,
                decoration: const InputDecoration(
                  labelText: 'Enter numeric grade in decimal form',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: _convertGrade,
                child: Text('Convert')
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
