import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness_app/features/home/data/model/workout_sets_model.dart';

class Day {
  final String id;
  final String name;
  final List<WorkoutSet> sets;

  Day({
    required this.id,
    required this.name,
    required this.sets,
  });

  factory Day.fromSnapshot(DocumentSnapshot doc, List<WorkoutSet> sets) {
    return Day(
      id: doc.id,
      name: doc['name'],
      sets: sets,
    );
  }
}
