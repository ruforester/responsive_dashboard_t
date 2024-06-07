import 'package:responsive_dashboard/models/health_model.dart';

class HealthDetailsData {
  final healthData = <HealthModel>[
    HealthModel(
        icon: 'assets/icons/burn.png', value: '305', title: 'Calories burned'),
    HealthModel(
        icon: 'assets/icons/steps.png', value: '10,983', title: 'Steps'),
    HealthModel(
        icon: 'assets/icons/distance.png', value: '7km', title: 'Distance'),
    HealthModel(icon: 'assets/icons/sleep.png', value: '7h48m', title: 'Sleep'),
  ];
}
