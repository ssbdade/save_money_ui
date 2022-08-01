import 'package:get/get.dart';
import 'package:save_money/util/constants/locale_keys.dart';

class DetailPageController extends GetxController {
  var dropdownValue = LocaleKeys.transaction.obs;
  var isSelected = [
    true,
    false,
  ].obs;
  var isIncome = false.obs;
}