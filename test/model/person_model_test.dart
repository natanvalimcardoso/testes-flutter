import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testes_masterclass/model/person_model.dart';

void main() {
  var person = PersonModel(height: 70, weight: 1.77);
  test(
    'Deve retornar 22.34 ao instanciar PersonModel com peso 70 e altura 1.77',
    () {
      
    },
  );
}
