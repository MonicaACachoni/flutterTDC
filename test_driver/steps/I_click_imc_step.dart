import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/imc_page.dart';

class Dado_Peso_e_Altura extends StepDefinition<FlutterWorld> {
  Dado_Peso_e_Altura()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);
    await homePage.setPesoValue("58");
    await homePage.setAlturaValue("1.6");
  }

  @override
  RegExp get pattern => RegExp(r"Dado que tenho o peso e tenho de altura");
}

class Calc_Imc extends StepDefinition<FlutterWorld> {
  Calc_Imc()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);
    await homePage.clickBtnImc();
  }

  @override
  RegExp get pattern => RegExp(r"Quando eu clicar no botao IMC");
}

class Print_Imc extends StepDefinition<FlutterWorld> {
  Print_Imc()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);
    await homePage.getImc();
  }

  @override
  RegExp get pattern => RegExp(r"Então o valor calculado é apresentado");
}