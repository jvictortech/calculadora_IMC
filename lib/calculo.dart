void calculo() {
  double peso = 70.5;
  double altura = 1.76;

  double imc = (peso / (altura * altura));

  String imcfinal = imc.toStringAsFixed(2);

  if (imc < 18.5) {
    print(
        'Seu imc é $imcfinal , isso significa que você está abaixo do peso, procure ajuda profissional');
  }

  if (imc >= 18.5 && imc <= 24.9) {
    print('Seu imc é $imcfinal ,isso significa que você está com o peso ideal');
  }

  if (imc >= 25 && imc <= 29.9) {
    print(
        'Seu imc é $imcfinal ,isso significa que você está com sobrepeso, procure ajuda profissional');
  }

  if (imc >= 30 && imc <= 34.9) {
    print(
        'Seu imc é $imcfinal ,isso significa que você está com obsidade grau I, procure ajuda profissional');
  }

  if (imc >= 35 && imc <= 40) {
    print(
        'Seu imc é $imcfinal ,isso significa que você está com obsidade grau II, procure ajuda profissional');
  }

  if (imc >= 40) {
    print(
        'Seu imc é $imcfinal ,isso significa que você está com obsidade grau III, procure ajuda profissional');
  }
  }
