import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testes_masterclass/model/person_model.dart';

void main() {
  test(
    'Deve retornar 22.34 ao instanciar PersonModel com peso 70 e altura 1.77',
    () {
      var person = PersonModel(weight: 70, height: 1.77);
      expect(person.getIMC(), 22.34351559258195);
    },
  );

  test(
    'Deve disparar um erro se weight for menor que 0',
    () {
      var person = PersonModel(weight: 70, height: 1.77);
      final result = person.getIMC();
    },
  );
}
