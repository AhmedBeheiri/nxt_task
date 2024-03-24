import 'package:equatable/equatable.dart';

class ReservationsEntity extends Equatable {
  final List<ReservationEntity> reservations;

  const ReservationsEntity({
    required this.reservations,
  });

  @override
  List<Object?> get props => [reservations];
}

class ReservationEntity extends Equatable {
  final int reservationId;

  final String from;
  final String to;

  final List<UserTicketEntity> userTickets;

  final List<StayEntity> stays;

  const ReservationEntity({
    required this.reservationId,
    required this.from,
    required this.to,
    required this.userTickets,
    required this.stays,
  });

  @override
  List<Object?> get props => [
        reservationId,
        from,
        to,
        userTickets,
      ];
}

class StayEntity extends Equatable {
  final List<GuestEntity> guests;
  final String hotelName;
  final String from;
  final String to;
  final int review;
  final int roomCount;
  final String lat;
  final String long;
  final String address;

  final List<RoomEntity> rooms;

  final List<String> images;
  final String amenities;

  @override
  List<Object?> get props => [
        guests,
        hotelName,
        from,
        to,
        review,
        roomCount,
        lat,
        long,
        address,
        rooms,
        images,
        amenities,
      ];

  const StayEntity({
    required this.guests,
    required this.hotelName,
    required this.from,
    required this.to,
    required this.review,
    required this.roomCount,
    required this.lat,
    required this.long,
    required this.address,
    required this.rooms,
    required this.images,
    required this.amenities,
  });
}

class GuestEntity extends Equatable {
  final String name;
  final String avatar;

  const GuestEntity({
    required this.name,
    required this.avatar,
  });

  @override
  List<Object?> get props => [
        name,
        avatar,
      ];
}

class UserTicketEntity extends Equatable {
  final int id;
  final String ticketNumber;
  final String ticketType;

  final String seatNumber;
  final String userName;
  final String userAvatar;

  const UserTicketEntity({
    required this.id,
    required this.ticketNumber,
    required this.ticketType,
    required this.seatNumber,
    required this.userName,
    required this.userAvatar,
  });

  @override
  List<Object?> get props => [
        id,
        ticketNumber,
        ticketType,
        seatNumber,
        userName,
        userAvatar,
      ];
}

class RoomEntity extends Equatable {
  final String roomName;
  final String roomType;
  final String roomNumber;
  final String sleeps;
  final List<GuestEntity> guests;

  const RoomEntity({
    required this.roomName,
    required this.roomType,
    required this.roomNumber,
    required this.sleeps,
    required this.guests,
  });

  @override
  List<Object?> get props => [
        roomName,
        roomType,
        roomNumber,
        sleeps,
        guests,
      ];
}
