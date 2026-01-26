enum Grade { A, B, C, D, F }

class GradeTool {
  Grade gradeScale(double grade) {
    if (grade >= 0.9) {
      return Grade.A;
    } else if (grade >= 0.8){
      return Grade.B;
    } else if (grade >= 0.7) {
      return Grade.C;
    } else if (grade >= 0.6) {
      return Grade.D;
    } else {
      return Grade.F;
    }
  }
}

class GradeConverter {
  static String convertToGrade(String input) {
    double? numericGrade = double.tryParse(input);

    if (numericGrade == null) {
      return 'Enter a valid decimal number';
    } else {
      GradeTool letterGrade = GradeTool();
      return 'Letter Grade: ${letterGrade.gradeScale(numericGrade).name}';
    }
  }
}