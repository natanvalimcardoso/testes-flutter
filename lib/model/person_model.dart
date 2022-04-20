import 'dart:math' as math;

class PersonModel {
  //regra de negocio corporativa ou enterprise business logic

  final double height;
  final double weight;

  PersonModel({
    required this.height,
    required this.weight,
  }) : assert (height > 0, 'Altura deve ser maior que 0'), // Serve para validar se a altura é maior que 0
       assert (weight > 0, 'Peso deve ser maior que 0');

  // Regra de negocio da aplicacao

  double getIMC() {
    var result = weight / math.pow(height, 2);
    return result;
  }
}
