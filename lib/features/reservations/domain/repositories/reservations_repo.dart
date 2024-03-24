// Importing the dartz package for functional programming in Dart
import 'package:dartz/dartz.dart';

// Importing the custom Failure class to handle errors
import 'package:nxt_task/core/error/failures.dart';

// Importing the ReservationsEntity class which represents a reservation
import 'package:nxt_task/features/reservations/domain/entities/reservations_entity.dart';

// Defining an abstract class named ReservationsRepo
abstract class ReservationsRepo {
  // Defining a method to get reservations
  // This method returns a Future that completes with either a Failure or a ReservationsEntity
  Future<Either<Failure,ReservationsEntity>> getReservations();
}