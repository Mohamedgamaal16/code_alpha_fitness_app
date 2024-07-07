import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fitness_app/features/home/data/model/day_model.dart';
import 'package:fitness_app/features/home/data/model/discover_workout_model.dart';
import 'package:fitness_app/features/home/data/model/workout_model.dart';
import 'package:fitness_app/features/home/data/model/workout_sets_model.dart';
import 'package:fitness_app/features/home/data/repos/home_repo.dart';

class WorkoutRepositoryImpl implements WorkoutRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<Either<String, List<DiscoverWorkout>>> getDiscoverWorkouts() async {
    try {
      QuerySnapshot discoverSnapshot =
          await _firestore.collection('discoverWorkOuts').get();
      List<DiscoverWorkout> discoverWorkouts = [];

      for (QueryDocumentSnapshot doc in discoverSnapshot.docs) {
        String name = doc['name'];
        int workoutNumber = doc['workoutNumber'];

        // Fetch workouts subcollection
        QuerySnapshot workoutSnapshot =
            await doc.reference.collection('workouts').get();
        List<Workout> workouts = [];

        for (QueryDocumentSnapshot workoutDoc in workoutSnapshot.docs) {
          String workoutName = workoutDoc['name'];

          // Fetch days subcollection
          QuerySnapshot daySnapshot =
              await workoutDoc.reference.collection('days').get();
          List<Day> days = [];

          for (QueryDocumentSnapshot dayDoc in daySnapshot.docs) {
            String dayName = dayDoc['name'];

            // Fetch sets subcollection
            QuerySnapshot setSnapshot =
                await dayDoc.reference.collection('sets').get();
            List<WorkoutSet> sets = [];

            for (QueryDocumentSnapshot setDoc in setSnapshot.docs) {
              List<int> reps = List<int>.from(setDoc['reps']);
              List<double> weight = List<double>.from(setDoc['weight']);

              sets.add(WorkoutSet(
                id: setDoc.id,
                reps: reps,
                weight: weight,
              ));
            }

            days.add(Day(
              id: dayDoc.id,
              name: dayName,
              sets: sets,
            ));
          }

          workouts.add(Workout(
            id: workoutDoc.id,
            name: workoutName,
            days: days,
          ));
        }

        discoverWorkouts.add(DiscoverWorkout(
          id: doc.id,
          name: name,
          workoutNumber: workoutNumber,
          workouts: workouts,
        ));
      }

      return right(discoverWorkouts);
    } catch (e) {
      return left("An error occurred: ${e.toString()}");
    }
  }

  @override
  Future<Either<String, String>> addReps(
      {required String workoutId,
      required String dayId,
      required String setId,
      required int rep}) async {
    try {
      DocumentReference setRef = _firestore
          .collection('discoverWorkOuts')
          .doc(workoutId)
          .collection('workouts')
          .doc(workoutId)
          .collection('days')
          .doc(dayId)
          .collection('sets')
          .doc(setId);

      await setRef.update({
        'reps': FieldValue.arrayUnion([rep]),
      });
      return right('Reps added successfully');
    } catch (e) {
      return left("An error occurred: ${e.toString()}");
    }
  }

  @override
  Future<Either<String, String>> addWeight(
      {required String workoutId,
      required String dayId,
      required String setId,
      required double weight}) async {
    try {
      DocumentReference setRef = _firestore
          .collection('discoverWorkOuts')
          .doc(workoutId)
          .collection('workouts')
          .doc(workoutId)
          .collection('days')
          .doc(dayId)
          .collection('sets')
          .doc(setId);

      await setRef.update({
        'weight': FieldValue.arrayUnion([weight]),
      });
      return right('Weight added successfully');
    } catch (e) {
      return left("An error occurred: ${e.toString()}");
    }
  }
}
