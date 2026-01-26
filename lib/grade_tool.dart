enum Grade { A, B, C, D, F }

class GradeTool {
  Grade convert(double grade) {
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