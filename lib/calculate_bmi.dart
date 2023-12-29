import 'dart:math';

class CalculateBmi {
  CalculateBmi({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi=19.0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25){
      return 'Overweight';
    }
    else if(_bmi>18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }
  String getMeaning(){
    if(_bmi>=25){
      return 'You are in risk.Do regular Exercise in order to loss weight.';
    }
    else if(_bmi>18.5){
      return 'Congratulations,You are fit.';
    }else{
      return 'Your BMI is very low,try increasing your weight by eating healthy foods.';
    }
  }
}
