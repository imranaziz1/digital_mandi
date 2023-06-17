import 'package:flutter/material.dart';

class DashboardCategories{
  final String title, heading, subHeading;
  final VoidCallback? onPress;

  DashboardCategories(this.title,this.heading,this.subHeading,this.onPress);
  static List<DashboardCategories> list = [
    DashboardCategories("JS", "Fruits", "14 Items", () { }),
    DashboardCategories("PS", "Vegetables", "19 Items", () { }),
    DashboardCategories("FR", "lemons", "15 Items", () { }),
    DashboardCategories("VG", "Mango", "16 Items", () { }),
    DashboardCategories("EF", "Grapes", "13 Items", () { }),
  ];
}