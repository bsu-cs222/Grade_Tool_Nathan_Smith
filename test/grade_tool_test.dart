import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_tool.dart';

void main() {
  final gradeNumber = GradeTool();
  final map = {
    95: 'A',
    82: 'B',
    78: 'C',
    60: 'D',
    59: 'F',
  };

  for (int grade in map.keys) {
    final result = map[grade];
    test('$grade $result', () {
      final actual = gradeNumber.convert(grade);
      expect(result, actual);
    });
  }
}