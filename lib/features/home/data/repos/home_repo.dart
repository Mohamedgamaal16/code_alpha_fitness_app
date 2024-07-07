import 'package:dartz/dartz.dart';
import 'package:fitness_app/features/home/data/model/discover_workout_model.dart';

abstract class WorkoutRepository {
  Future<Either<String,List <DiscoverWorkout>>> getDiscoverWorkouts();
  Future<Either<String, String>> addReps(
      {required String workoutId,
      required String dayId,
      required String setId,
      required int rep});
  Future<Either<String, String>> addWeight(
      {required String workoutId,
      required String dayId,
      required String setId,
      required double weight});
}
