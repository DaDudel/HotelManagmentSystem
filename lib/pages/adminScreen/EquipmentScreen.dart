import 'package:flutter/material.dart';
import 'package:hotel_management_system/components/dashboardLayout.dart';
import 'package:hotel_management_system/pages/adminScreen/EquipmentList.dart';
import 'package:hotel_management_system/pages/kitchen/ActiveMeal.dart';
import 'package:provider/provider.dart';

class EquipmentScreen extends StatelessWidget {
  const EquipmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ActiveMeal(),
      child: DashboardLayout(
        child: Padding(
          padding: const EdgeInsets.all(150),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EquipmentList(),
            ],
          ),
        ),
      ),
    );
  }
}
