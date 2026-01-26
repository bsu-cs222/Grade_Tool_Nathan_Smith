import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_tool.dart';

void main() {
  final gradeNumber = GradeTool();
  final map = {
    0.95: Grade.A,
    0.82: Grade.B,
    0.78: Grade.C,
    0.60: Grade.D,
    0.59: Grade.F,
  };

  for (double grade in map.keys) {
    final result = map[grade];
    test('$grade $result', () {
      final actual = gradeNumber.convert(grade);
      expect(result, actual);
    });
  }
}