import 'package:day_eight/languages/bd.dart';
import 'package:day_eight/languages/en.dart';
import 'package:get/get.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {'bn_BD': bd, 'en_US': en};
}

//https://saimana.com/list-of-country-locale-code/