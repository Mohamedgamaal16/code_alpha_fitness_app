
import 'package:hive_flutter/adapters.dart';

class LocalDataService {
  final Box<int> _calorieBox = Hive.box<int>('localData');

  Future<void> saveCalorieValues({
    required int maintain,
    required int lose,
    required int loseFast,
    required int finishedWorkouts,
    required int timeSpent,
    required int inProgressWorkouts,
  }) async {
    await _calorieBox.put('maintain', maintain);
    await _calorieBox.put('lose', lose);
    await _calorieBox.put('loseFast', loseFast);
    await _calorieBox.put('finishedWorkouts', finishedWorkouts);
    await _calorieBox.put('timeSpent', timeSpent);
    await _calorieBox.put('inProgressWorkouts', inProgressWorkouts);
  }

  Map<String, int> fetchCalorieValues() {
    return {
      'maintain': _calorieBox.get('maintain', defaultValue: 0)!,
      'lose': _calorieBox.get('lose', defaultValue: 0)!,
      'loseFast': _calorieBox.get('loseFast', defaultValue: 0)!,
      'finishedWorkouts': _calorieBox.get('finishedWorkouts', defaultValue: 0)!,
      'timeSpent': _calorieBox.get('timeSpent', defaultValue: 0)!,
      'inProgressWorkouts':
          _calorieBox.get('inProgressWorkouts', defaultValue: 0)!,
    };
  }
}
