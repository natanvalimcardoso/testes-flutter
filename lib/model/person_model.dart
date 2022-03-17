import 'dart:math' as math;

class PersonModel{

  //regra de negocio corporativa ou enterprise business logic

  final double height;
  final double weight;

  PersonModel({required this.height, required this.weight});


  // Regra de negocio da aplicacao

  double getIMC(){
    var result = weight / math.pow(height, 2);
    return result;
  }

}