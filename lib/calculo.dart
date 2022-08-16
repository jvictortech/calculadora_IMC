import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Validador {
  var heightCtrl = MaskedTextController(mask: '000');
  var weightCtrl = MaskedTextController(mask: '000');
  var result = 'Preencha seus dados para calcular o IMC';

  calcularImc() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text) / 100;
    double imc = (weight / (height * height));
    String imcfinal = imc.toStringAsFixed(2);

    if (imc < 18.5) {
      result =
          ('Seu imc é $imcfinal , isso significa que você está abaixo do peso, procure ajuda profissional');
    } else if (imc >= 18.5 && imc <= 24.9) {
      result =
          ('Seu imc é $imcfinal ,isso significa que você está com o peso ideal');
    } else if (imc >= 25 && imc <= 29.9) {
      result =
          ('Seu imc é $imcfinal ,isso significa que você está com sobrepeso, procure ajuda profissional');
    } else if (imc >= 30 && imc <= 34.9) {
      result =
          ('Seu imc é $imcfinal ,isso significa que você está com obsidade grau I, procure ajuda profissional');
    } else if (imc >= 35 && imc <= 40) {
      result =
          ('Seu imc é $imcfinal ,isso significa que você está com obsidade grau II, procure ajuda profissional');
    } else if (imc >= 40) {
      result =
          ('Seu imc é $imcfinal ,isso significa que você está com obsidade grau III, procure ajuda profissional');
    }
    ;
  }
}
