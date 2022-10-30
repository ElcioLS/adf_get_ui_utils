import 'package:get/get.dart';

class GetViewController extends GetxController {
  var nome = 'Elcinho'.obs;

  @override
  void onReady() {
    print('On Ready Chamado!!!');
    super.onReady();
  }

  void alterar() {
    nome('Isabella Linda do Pai');
  }
}
