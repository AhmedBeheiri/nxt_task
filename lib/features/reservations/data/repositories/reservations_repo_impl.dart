// Importing necessary packages and modules
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nxt_task/core/error/exceptions.dart';
import 'package:nxt_task/core/error/failures.dart';
import 'package:nxt_task/features/reservations/domain/entities/reservations_entity.dart';
import 'package:nxt_task/features/reservations/domain/repositories/reservations_repo.dart';

// Importing the ReservationsRemoteDataSource
import '../data_sources/reservations_remote_data_source.dart';

// Using the injectable package to inject the ReservationsRepoImpl
@LazySingleton(as: ReservationsRepo)
// Defining a class named ReservationsRepoImpl that implements ReservationsRepo
class ReservationsRepoImpl implements ReservationsRepo {
  // Declaring a final variable of type ReservationsRemoteDataSource
  final ReservationsRemoteDataSource _remoteDataSource;

  // Defining a constructor for ReservationsRepoImpl
  const ReservationsRepoImpl({
    // Requiring a ReservationsRemoteDataSource parameter for the constructor
    required ReservationsRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  // Overriding the getReservations method from ReservationsRepo
  @override
  Future<Either<Failure, ReservationsEntity>> getReservations() async {
    try {
      // Making a network request to get reservations
      final reservations = await _remoteDataSource.getReservations();
      // Returning the reservations wrapped in a Right
      return Right(reservations);
    } on ServerException catch (e) {
      // Catching a ServerException and returning it wrapped in a Left
      return Left(
        ServerFailure(
          error: e.error,
          statusCode: e.statusCode,
        ),
      );
    }
  }
}