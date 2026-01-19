import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_tool.dart';

void main() {
  final gradeNumber = GradeTool();

  test('95 is an A', () {
    expect('A', gradeNumber.convert(90));
  });

  test('82 is a B', () {
    expect('B', gradeNumber.convert(82));
  });

  test('60 is a D', () {
    expect('D', gradeNumber.convert(60));
  });
}