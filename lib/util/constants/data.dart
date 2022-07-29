import 'package:save_money_ui/util/constants/app_image.dart';
import 'package:save_money_ui/util/constants/locale_keys.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';

abstract class DataApp {
  static const Map<String, double> expenseDataChart = {
    LocaleKeys.food: 32,
    LocaleKeys.shopping: 120,
    LocaleKeys.subscription: 80,
  };
  static const Map<String, double> incomeDataChart = {
    LocaleKeys.salary: 5000,
    LocaleKeys.passiveIncome: 1000,
  };
  static List<dynamic> expenseDataList = [
    {
      "type": LocaleKeys.shopping,
      "budget": 120,
      "time": "10:00 AM",
      "description": LocaleKeys.shoppingDescription,
      "icon": AppFileName.shoppingBag,
      "backgroundColor": HexColor("#FEEED0"),
      "iconColor": yellow100,
    },
    {
      "type": LocaleKeys.subscription,
      "budget": 80,
      "time": "03:30 PM",
      "icon": AppFileName.bill,
      "description": LocaleKeys.shoppingDescription,
      "backgroundColor": violet20,
      "iconColor": violet100,
    },
    {
      "type": LocaleKeys.food,
      "budget": 32,
      "time": "07:30 PM",
      "icon": AppFileName.restaurant,
      "description": LocaleKeys.foodDescription,
      "backgroundColor": red20,
      "iconColor": red100,
    },
  ];
  static List<dynamic> incomeDataList = [
    {
      "type": LocaleKeys.salary,
      "budget": 5000,
      "time": "04:30 PM",
      "description": LocaleKeys.salaryDescription,
      "icon": AppFileName.salaryBag,
      "backgroundColor": green20,
      "iconColor": green100,
    },
    {
      "type": LocaleKeys.passiveIncome,
      "budget": 1000,
      "time": "03:30 PM",
      "icon": AppFileName.shoppingBag,
      "description": LocaleKeys.passiveIncomeDescription,
      "backgroundColor": light40,
      "iconColor": dark100,
    },
  ];
}