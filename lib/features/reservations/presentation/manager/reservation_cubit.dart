// Importing necessary packages and modules
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:nxt_task/core/error/failures.dart';
import 'package:nxt_task/core/utils/nullable.dart';
import 'package:nxt_task/features/reservations/domain/entities/reservations_entity.dart';
import 'package:nxt_task/features/reservations/domain/repositories/reservations_repo.dart';

// Importing the ReservationState part file
part 'reservation_state.dart';

// Using the injectable package to inject the ReservationCubit
@injectable
// Defining a class named ReservationCubit that extends Cubit with a ReservationState
class ReservationCubit extends Cubit<ReservationState> {
  // Declaring a nullable variable of type ReservationsRepo
  final ReservationsRepo _repo;

  // Defining a constructor for ReservationCubit
  ReservationCubit(this._repo) : super(const ReservationState());

  // Defining a method to get reservations
  void getReservations() async {
    // Emitting a loading state

    emit(state.requestLoading());
    // Making a request to get reservations
    final result = await _repo.getReservations();
    // Using the fold method to handle the result
    result.fold(
      // If there's a failure, emit a failure state
          (failure) {
        emit(
          state.requestFailure(failure),
        );
      },
      // If the request is successful, emit a success state with the reservations
          (reservations) {
        emit(
          state.requestSuccess(reservations),
        );
      },
    );
  }
}