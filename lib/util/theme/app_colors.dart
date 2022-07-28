import 'package:flutter/material.dart';

const Color white = Colors.white;

final HexColor dark25 = HexColor("#7A7E80");
final HexColor dark50 = HexColor("#464A4D");
final HexColor dark75 = HexColor("#161719");
final HexColor dark100 = HexColor("#0D0E0F");

final HexColor light20 = HexColor("#E3E5E5");
final HexColor light40 = HexColor("#F2F4F5");
final HexColor light60 = HexColor("#F7F9FA");
final HexColor light80 = HexColor("#FBFBFB");
const Color light100 = Colors.white;

final HexColor violet20 = HexColor("#EEE5FF");
final HexColor violet40 = HexColor("#D3BDFF");
final HexColor violet60 = HexColor("#B18AFF");
final HexColor violet80 = HexColor("#8F57FF");
final HexColor violet100 = HexColor("#7F3DFF");

final HexColor green20 = HexColor("#CFFAEA");
final HexColor green40 = HexColor("#93EACA");
final HexColor green60 = HexColor("#65D1AA");
final HexColor green80 = HexColor("#2AB784");
final HexColor green100 = HexColor("#00A86B");

final HexColor red20 = HexColor("#FDD5D7");
final HexColor red40 = HexColor("#FDA2A9");
final HexColor red60 = HexColor("#FD6F7A");
final HexColor red80 = HexColor("#FD5662");
final HexColor red100 = HexColor("#FD3C4A");

final HexColor yellow20 = HexColor("#FCEED4");
final HexColor yellow40 = HexColor("#FCDDA1");
final HexColor yellow60 = HexColor("#FCCC6F");
final HexColor yellow80 = HexColor("#FCBB3C");
final HexColor yellow100 = HexColor("#FCAC12");

final HexColor blue20 = HexColor("#BDDCFF");
final HexColor blue40 = HexColor("#8AC0FF");
final HexColor blue60 = HexColor("#57A5FF");
final HexColor blue80 = HexColor("#248AFF");
final HexColor blue100 = HexColor("#0077FF");




class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}