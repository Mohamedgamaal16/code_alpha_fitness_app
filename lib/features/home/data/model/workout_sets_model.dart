import 'package:cloud_firestore/cloud_firestore.dart';

class WorkoutSet {
  final String id;
  final List<int> reps;
  final List<double> weight;

  WorkoutSet({
    required this.id,
    required this.reps,
    required this.weight,
  });

  factory WorkoutSet.fromSnapshot(DocumentSnapshot doc) {
    return WorkoutSet(
      id: doc.id,
      reps: List<int>.from(doc['reps']),
      weight: List<double>.from(doc['weight']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'reps': reps,
      'weight': weight,
    };
  }
}
