import 'package:flutter_driver/flutter_driver.dart';

class HomePage {
  static const TXT_ALTURA = 'altura';
  static const TXT_PESO = 'peso';
  static const TXT_IMC = 'imcValue';
  static const BTN_IMC= 'imc';

  FlutterDriver _driver;

  //Constructor
  HomePage(FlutterDriver driver) {
    this._driver = driver;
  }

  Future<void> setAlturaValue(String altura ) async {
    var altKey = find.byValueKey(TXT_ALTURA);
    await _driver.tap(altKey);
    await _driver.enterText(altura);
  }
  Future<void> setPesoValue(String peso ) async {
    var pesoKey = find.byValueKey(TXT_PESO);
    await _driver.tap(pesoKey);
    await _driver.enterText(peso);
  }

  Future<void> clickBtnImc() async {
    var imcKey = find.byValueKey(BTN_IMC);
    await _driver.waitFor(imcKey);
    await _driver.tap(imcKey);
  }

  Future<String> getImc() async {
    return await _driver.getText(find.byValueKey(TXT_IMC));
  }
}
