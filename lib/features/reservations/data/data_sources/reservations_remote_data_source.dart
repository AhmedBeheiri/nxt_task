// Importing necessary packages and modules
import 'package:injectable/injectable.dart';
import 'package:nxt_task/core/network/service.dart';
import 'package:nxt_task/features/reservations/data/models/reservations_model.dart';

// Defining an abstract class named ReservationsRemoteDataSource
abstract class ReservationsRemoteDataSource {
  // Defining a method to get reservations
  Future<ReservationsModel> getReservations();
}

// Using the injectable package to inject the ReservationsRemoteDataSourceImpl
@LazySingleton(as: ReservationsRemoteDataSource)
// Defining a class named ReservationsRemoteDataSourceImpl that implements ReservationsRemoteDataSource
class ReservationsRemoteDataSourceImpl
    implements ReservationsRemoteDataSource {
  // Declaring a final variable of type NetworkService
  final NetworkService _networkService;

  // Defining a constructor for ReservationsRemoteDataSourceImpl
  const ReservationsRemoteDataSourceImpl({
    // Requiring a NetworkService parameter for the constructor
    required NetworkService networkService,
  }) : _networkService = networkService;

  // Overriding the getReservations method from ReservationsRemoteDataSource
  @override
  Future<ReservationsModel> getReservations() async {
    // Making a network request to get reservations
    final response = await _networkService.getReservations();
    // Converting the response to a ReservationsModel and returning it
    return ReservationsModel.fromJson(response.body);
  }
}