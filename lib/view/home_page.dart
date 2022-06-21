import 'package:flutter/material.dart';
import '../controller/imc_controler.dart';

////ready
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = ImcController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    onChanged: controller.setWeight,
                    decoration: InputDecoration(
                      labelText: 'Peso (kg)',
                    ),
                  ),
                  TextField(
                    onChanged: controller.setHeight,
                    decoration: InputDecoration(
                      labelText: 'Altura (cm)',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text('Calcular'),
                      onPressed: () {
                        controller.calcImc();
                      },
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: AnimatedBuilder(
                        //para puxar o ChangeNotifier
                        animation: controller,
                        builder: (context, child) {
                          return Text(
                            controller.result,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
