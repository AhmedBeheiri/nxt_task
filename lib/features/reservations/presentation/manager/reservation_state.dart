part of 'reservation_cubit.dart';

@immutable
class ReservationState extends Equatable {
  final bool loading;
  final ReservationsEntity? reservations;
  final Failure? failure;

  const ReservationState({
    this.loading = false,
    this.reservations,
    this.failure,
  });

  ReservationState requestLoading() {
    return copyWith(
       loading: true,
      failure: Nullable(null),
    );
  }

  ReservationState requestSuccess(ReservationsEntity reservations) {
    return copyWith(
       loading: false,
      reservations: Nullable(reservations),
      failure: Nullable(null),
    );
  }

  ReservationState requestFailure(Failure failure) {
    return copyWith(
       loading: false,
      reservations: Nullable(null),
      failure: Nullable(failure),
    );
  }

  @override
  List<Object?> get props => [
        loading,
        reservations,
        failure,
      ];

  ReservationState copyWith({
    bool? loading,
    Nullable<ReservationsEntity?>? reservations,
    Nullable<Failure?>? failure,
  }) {
    return ReservationState(
      loading: loading ?? this.loading,
      reservations:
          reservations == null ? this.reservations : reservations.value,
      failure: failure == null ? this.failure : failure.value,
    );
  }
}
