import 'package:fitness_tracker_ui/model/health_model.dart';

class HealthData {
  final health_data = const <HealthModel>[
    HealthModel(
      icon: 'assets/icons/distance.png',
      title: 'Distance',
      value: '7 km',
    ),
    HealthModel(
      icon: 'assets/icons/steps.png',
      title: 'Steps',
      value: '5,000 steps',
    ),
    HealthModel(
      icon: 'assets/icons/burn.png',
      title: 'Calories Burned',
      value: '300 kcal',
    ),
    HealthModel(
      icon: 'assets/icons/sleep.png',
      title: 'Sleep Duration',
      value: '7 hours',
    ),
  ];
}
