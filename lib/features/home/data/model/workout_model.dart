import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness_app/features/home/data/model/day_model.dart';

class Workout {
  final String id;
  final String name;
  final List<Day> days;

  Workout({
    required this.id,
    required this.name,
    required this.days,
  });

  factory Workout.fromSnapshot(DocumentSnapshot doc, List<Day> days) {
    return Workout(
      id: doc.id,
      name: doc['name'],
      days: days,
    );
  }
}
