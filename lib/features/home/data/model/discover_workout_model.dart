import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness_app/features/home/data/model/workout_model.dart';

class DiscoverWorkout {
  final String id;
  final String name;
  final int workoutNumber;
  final List<Workout> workouts;

  DiscoverWorkout({
    required this.id,
    required this.name,
    required this.workoutNumber,
    required this.workouts,
  });

  factory DiscoverWorkout.fromSnapshot(DocumentSnapshot doc, List<Workout> workouts) {
    return DiscoverWorkout(
      id: doc.id,
      name: doc['name'],
      workoutNumber: doc['workoutNumber'],
      workouts: workouts,
    );
  }
}
