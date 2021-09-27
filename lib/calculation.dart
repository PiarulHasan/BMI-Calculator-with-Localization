import 'dart:math';
import 'package:easy_localization/easy_localization.dart';

class Calculation{

  Calculation({this.h,this.w});

  int h;
  int w;

  double result;

  String calculations(){
    result = (w/(h*h));
    return result.toString();
  }

  String feedback(){
    if(result<18){
      return "Under weight";
    }
    else if(result<25){
      return "Normal";
    }

    else if(result <30){
      return "Over weight";
    }
    else{
      return "Obese";
    }
  }

  String sug(){
    if(result < 18){
      return "Eat more";
    }
    else if(result <25){
      return "You are fit";
    }

    else if(result <30){
      return "Eat less";
    }

    else{
      return "Eat less and do exercise";
    }
  }

}
