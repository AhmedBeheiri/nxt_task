// ignore_for_file: annotate_overrides, overridden_fields

import 'package:nxt_task/features/reservations/domain/entities/reservations_entity.dart';

/// reservations : [{"id":82,"start_date":"2023-06-23","end_date":"2023-06-25","stays":[{"name":"Marriott","description":"<p>Marriott <strong>great</strong> <em>holdiay</em></p>","lat":"30.29731276449795","lng":"31.22095413193672","address":"Saray El, Gezira St, Omar Al Khayam, Zamalek, Cairo Governorate 11211, Egypt","check_in":"14:00","check_out":"12:00","stars":5,"stay_images":["https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/89/76/94/pool--v9513198.jpg?w=700&h=-1&s=1","https://cache.marriott.com/marriottassets/marriott/CAIEG/caieg-exterior-0218-hor-feat.jpg"],"amenities":"Swimming pool, Continental breakfast, and Spa","rooms":[{"room_number":"2","room_capacity":3,"room_type_name":"Roomy","stay_name":"Marriott","guests":[{"first_name":"Ahmed","last_name":"Mohammed","avatar":"https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg"}]}]},{"name":"Hotelly","description":"<p><strong><em>hooootelllllyyyyy</em></strong>&nbsp; <span style=\"text-decoration: underline;\">great</span></p>","lat":"30.29731276449795","lng":"31.22095413193672","address":"Address","check_in":"14:00","check_out":"12:00","stars":3,"stay_images":["https://res.cloudinary.com/swtchcc/raw/upload/v1687436897/hotels/lae9ucxfi4wjvp39cngf.jpg","https://res.cloudinary.com/swtchcc/raw/upload/v1687436900/hotels/nybvmidwcedyzmau7v4j.jpg"],"amenities":"swimming pool, continental breakfast, and spa","rooms":[{"room_number":"1","room_capacity":1,"room_type_name":"Roomy","stay_name":"Hotelly","guests":[{"first_name":"Abdullah","last_name":"Mohamed","avatar":"https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg"}]}]}],"user_tickets":[{"ticket_id":7,"seat":"33","ticket_system_id":"RSW3123123","ticket_type_name":"Golden","ticket_user_data":{"first_name":"Ahmed","last_name":"Ali","avatar":"https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg","is_user":true},"gate":"55"},{"ticket_id":8,"seat":"32","ticket_system_id":"GSA95885","ticket_type_name":"Golden","ticket_user_data":{"first_name":"Hany","last_name":"Amr","avatar":"https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg","is_user":false},"gate":"65"}]},{"id":82,"start_date":"2023-06-23","end_date":"2023-06-25","stays":[{"name":"Helton","description":"<p>Helton <strong>great</strong> <em>holdiay</em></p>","lat":"25.287263","lng":null,"address":"3","check_in":"14:00","check_out":"12:00","stars":5,"stay_images":["https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/89/76/94/pool--v9513198.jpg?w=700&h=-1&s=1","https://cache.marriott.com/marriottassets/marriott/CAIEG/caieg-exterior-0218-hor-feat.jpg"],"amenities":"Swimming pool, Continental breakfast, and Spa","rooms":[{"room_number":"2","room_capacity":3,"room_type_name":"Roomy","stay_name":"Helton","guests":[{"first_name":"Shady","last_name":"Ali","avatar":"https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg"}]}]}]}]

class ReservationsModel extends ReservationsEntity {
  const ReservationsModel({
    required this.reservations,
  }) : super(reservations: reservations);

  factory ReservationsModel.fromJson(dynamic json) {
    return ReservationsModel(
      reservations: json['reservations'] != null
          ? (json['reservations'] as List)
              .map((x) => Reservations.fromJson(x))
              .toList()
          : [],
    );
  }

  final List<Reservations> reservations;

  ReservationsModel copyWith({
    List<Reservations>? reservations,
  }) =>
      ReservationsModel(
        reservations: reservations ?? this.reservations,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['reservations'] = reservations.map((v) => v.toJson()).toList();
    return map;
  }
}

/// id : 82
/// start_date : "2023-06-23"
/// end_date : "2023-06-25"
/// stays : [{"name":"Marriott","description":"<p>Marriott <strong>great</strong> <em>holdiay</em></p>","lat":"30.29731276449795","lng":"31.22095413193672","address":"Saray El, Gezira St, Omar Al Khayam, Zamalek, Cairo Governorate 11211, Egypt","check_in":"14:00","check_out":"12:00","stars":5,"stay_images":["https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/89/76/94/pool--v9513198.jpg?w=700&h=-1&s=1","https://cache.marriott.com/marriottassets/marriott/CAIEG/caieg-exterior-0218-hor-feat.jpg"],"amenities":"Swimming pool, Continental breakfast, and Spa","rooms":[{"room_number":"2","room_capacity":3,"room_type_name":"Roomy","stay_name":"Marriott","guests":[{"first_name":"Ahmed","last_name":"Mohammed","avatar":"https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg"}]}]},{"name":"Hotelly","description":"<p><strong><em>hooootelllllyyyyy</em></strong>&nbsp; <span style=\"text-decoration: underline;\">great</span></p>","lat":"30.29731276449795","lng":"31.22095413193672","address":"Address","check_in":"14:00","check_out":"12:00","stars":3,"stay_images":["https://res.cloudinary.com/swtchcc/raw/upload/v1687436897/hotels/lae9ucxfi4wjvp39cngf.jpg","https://res.cloudinary.com/swtchcc/raw/upload/v1687436900/hotels/nybvmidwcedyzmau7v4j.jpg"],"amenities":"swimming pool, continental breakfast, and spa","rooms":[{"room_number":"1","room_capacity":1,"room_type_name":"Roomy","stay_name":"Hotelly","guests":[{"first_name":"Abdullah","last_name":"Mohamed","avatar":"https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg"}]}]}]
/// user_tickets : [{"ticket_id":7,"seat":"33","ticket_system_id":"RSW3123123","ticket_type_name":"Golden","ticket_user_data":{"first_name":"Ahmed","last_name":"Ali","avatar":"https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg","is_user":true},"gate":"55"},{"ticket_id":8,"seat":"32","ticket_system_id":"GSA95885","ticket_type_name":"Golden","ticket_user_data":{"first_name":"Hany","last_name":"Amr","avatar":"https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg","is_user":false},"gate":"65"}]

class Reservations extends ReservationEntity {
  const Reservations({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.stays,
    required this.userTickets,
  }) : super(
            reservationId: id,
            from: startDate,
            to: endDate,
            stays: stays,
            userTickets: userTickets);

  factory Reservations.fromJson(dynamic json) {
    return Reservations(
      id: json['id'],
      startDate: json['start_date'],
      endDate: json['end_date'],
      stays: json['stays'] != null
          ? (json['stays'] as List).map((x) => Stays.fromJson(x)).toList()
          : [],
      userTickets: json['user_tickets'] != null
          ? (json['user_tickets'] as List)
              .map((x) => UserTickets.fromJson(x))
              .toList()
          : [],
    );
  }

  final int id;
  final String startDate;
  final String endDate;
  final List<Stays> stays;
  final List<UserTickets> userTickets;

  Reservations copyWith({
    int? id,
    String? startDate,
    String? endDate,
    List<Stays>? stays,
    List<UserTickets>? userTickets,
  }) =>
      Reservations(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        stays: stays ?? this.stays,
        userTickets: userTickets ?? this.userTickets,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['start_date'] = startDate;
    map['end_date'] = endDate;
    map['stays'] = stays.map((v) => v.toJson()).toList();
    map['user_tickets'] = userTickets.map((v) => v.toJson()).toList();
    return map;
  }
}

/// ticket_id : 7
/// seat : "33"
/// ticket_system_id : "RSW3123123"
/// ticket_type_name : "Golden"
/// ticket_user_data : {"first_name":"Ahmed","last_name":"Ali","avatar":"https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg","is_user":true}
/// gate : "55"

class UserTickets extends UserTicketEntity {
  UserTickets({
    required this.ticketId,
    required this.seat,
    required this.ticketSystemId,
    required this.ticketTypeName,
    required this.ticketUserData,
    required this.gate,
  }) : super(
          id: ticketId,
          seatNumber: '$gate / $seat',
          ticketNumber: ticketSystemId,
          ticketType: ticketTypeName,
          userName: '${ticketUserData.firstName} ${ticketUserData.lastName}',
          userAvatar: ticketUserData.avatar,
        );

  factory UserTickets.fromJson(dynamic json) {
    return UserTickets(
      ticketId: json['ticket_id'],
      seat: json['seat'],
      ticketSystemId: json['ticket_system_id'],
      ticketTypeName: json['ticket_type_name'],
      ticketUserData: TicketUserData.fromJson(json['ticket_user_data']),
      gate: json['gate'],
    );
  }

  final int ticketId;
  final String seat;
  final String ticketSystemId;
  final String ticketTypeName;
  final TicketUserData ticketUserData;
  final String gate;

  UserTickets copyWith({
    int? ticketId,
    String? seat,
    String? ticketSystemId,
    String? ticketTypeName,
    TicketUserData? ticketUserData,
    String? gate,
  }) =>
      UserTickets(
        ticketId: ticketId ?? this.ticketId,
        seat: seat ?? this.seat,
        ticketSystemId: ticketSystemId ?? this.ticketSystemId,
        ticketTypeName: ticketTypeName ?? this.ticketTypeName,
        ticketUserData: ticketUserData ?? this.ticketUserData,
        gate: gate ?? this.gate,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ticket_id'] = ticketId;
    map['seat'] = seat;
    map['ticket_system_id'] = ticketSystemId;
    map['ticket_type_name'] = ticketTypeName;
    map['ticket_user_data'] = ticketUserData.toJson();
    map['gate'] = gate;
    return map;
  }
}

/// first_name : "Ahmed"
/// last_name : "Ali"
/// avatar : "https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg"
/// is_user : true

class TicketUserData {
  TicketUserData({
    required this.firstName,
    required this.lastName,
    required this.avatar,
    required this.isUser,
  });

  factory TicketUserData.fromJson(dynamic json) {
    return TicketUserData(
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
      isUser: json['is_user'],
    );
  }

  final String firstName;
  final String lastName;
  final String avatar;
  final bool isUser;

  TicketUserData copyWith({
    String? firstName,
    String? lastName,
    String? avatar,
    bool? isUser,
  }) =>
      TicketUserData(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        avatar: avatar ?? this.avatar,
        isUser: isUser ?? this.isUser,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['avatar'] = avatar;
    map['is_user'] = isUser;
    return map;
  }
}

/// name : "Marriott"
/// description : "<p>Marriott <strong>great</strong> <em>holdiay</em></p>"
/// lat : "30.29731276449795"
/// lng : "31.22095413193672"
/// address : "Saray El, Gezira St, Omar Al Khayam, Zamalek, Cairo Governorate 11211, Egypt"
/// check_in : "14:00"
/// check_out : "12:00"
/// stars : 5
/// stay_images : ["https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/89/76/94/pool--v9513198.jpg?w=700&h=-1&s=1","https://cache.marriott.com/marriottassets/marriott/CAIEG/caieg-exterior-0218-hor-feat.jpg"]
/// amenities : "Swimming pool, Continental breakfast, and Spa"
/// rooms : [{"room_number":"2","room_capacity":3,"room_type_name":"Roomy","stay_name":"Marriott","guests":[{"first_name":"Ahmed","last_name":"Mohammed","avatar":"https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg"}]}]

class Stays extends StayEntity {
  Stays({
    required this.name,
    required this.description,
    required this.lat,
    this.lng,
    required this.address,
    required this.checkIn,
    required this.checkOut,
    required this.stars,
    required this.stayImages,
    required this.amenities,
    required this.rooms,
  }) : super(
          hotelName: name,
          from: checkIn,
          to: checkOut,
          address: address,
          lat: lat,
          long: lng ?? '0.0',
          review: stars.toInt(),
          roomCount: rooms.length,
          images: stayImages,
          amenities: amenities,
          rooms: rooms,
          guests:
              rooms.map((e) => e.guests).expand((element) => element).toList(),
        );

  factory Stays.fromJson(dynamic json) {
    return Stays(
      name: json['name'],
      description: json['description'],
      lat: json['lat'],
      lng: json['lng'],
      address: json['address'],
      checkIn: json['check_in'],
      checkOut: json['check_out'],
      stars: num.tryParse(json['stars'].toString()) ?? 0,
      stayImages: json['stay_images'] != null
          ? json['stay_images'].cast<String>()
          : [],
      amenities: json['amenities'],
      rooms: json['rooms'] != null
          ? (json['rooms'] as List).map((x) => Rooms.fromJson(x)).toList()
          : [],
    );
  }

  final String name;
  final String description;
  final String lat;
  final String? lng;
  final String address;
  final String checkIn;
  final String checkOut;
  final num stars;
  final List<String> stayImages;
  final String amenities;
  final List<Rooms> rooms;

  Stays copyWith({
    String? name,
    String? description,
    String? lat,
    String? lng,
    String? address,
    String? checkIn,
    String? checkOut,
    num? stars,
    List<String>? stayImages,
    String? amenities,
    List<Rooms>? rooms,
  }) =>
      Stays(
        name: name ?? this.name,
        description: description ?? this.description,
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
        address: address ?? this.address,
        checkIn: checkIn ?? this.checkIn,
        checkOut: checkOut ?? this.checkOut,
        stars: stars ?? this.stars,
        stayImages: stayImages ?? this.stayImages,
        amenities: amenities ?? this.amenities,
        rooms: rooms ?? this.rooms,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['description'] = description;
    map['lat'] = lat;
    map['lng'] = lng;
    map['address'] = address;
    map['check_in'] = checkIn;
    map['check_out'] = checkOut;
    map['stars'] = stars;
    map['stay_images'] = stayImages;
    map['amenities'] = amenities;
    map['rooms'] = rooms.map((v) => v.toJson()).toList();
    return map;
  }
}

/// room_number : "2"
/// room_capacity : 3
/// room_type_name : "Roomy"
/// stay_name : "Marriott"
/// guests : [{"first_name":"Ahmed","last_name":"Mohammed","avatar":"https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg"}]

class Rooms extends RoomEntity {
  Rooms({
    required this.roomNumber,
    required this.roomCapacity,
    required this.roomTypeName,
    required this.stayName,
    required this.guests,
  }):super(
    roomNumber: roomNumber,
    roomName: stayName,
    roomType: roomTypeName,
    sleeps: roomCapacity.toString(),
    guests: guests,
  );

  factory Rooms.fromJson(dynamic json) {
    return Rooms(
      roomNumber: json['room_number'],
      roomCapacity: num.tryParse(json['room_capacity'].toString()) ?? 0,
      roomTypeName: json['room_type_name'],
      stayName: json['stay_name'],
      guests: json['guests'] != null
          ? (json['guests'] as List).map((x) => Guests.fromJson(x)).toList()
          : [],
    );
  }

  final String roomNumber;
  final num roomCapacity;
  final String roomTypeName;
  final String stayName;
  final List<Guests> guests;

  Rooms copyWith({
    String? roomNumber,
    num? roomCapacity,
    String? roomTypeName,
    String? stayName,
    List<Guests>? guests,
  }) =>
      Rooms(
        roomNumber: roomNumber ?? this.roomNumber,
        roomCapacity: roomCapacity ?? this.roomCapacity,
        roomTypeName: roomTypeName ?? this.roomTypeName,
        stayName: stayName ?? this.stayName,
        guests: guests ?? this.guests,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['room_number'] = roomNumber;
    map['room_capacity'] = roomCapacity;
    map['room_type_name'] = roomTypeName;
    map['stay_name'] = stayName;
    map['guests'] = guests.map((v) => v.toJson()).toList();
    return map;
  }
}

/// first_name : "Ahmed"
/// last_name : "Mohammed"
/// avatar : "https://res.cloudinary.com/swtchcc/image/upload/c_scale,w_2800/ar_3:4,c_thumb,g_face,h_1512,z_0.80/v1682589758/userDocs/hvzsye0h3w8f6ud1cuwj.jpg"

class Guests extends GuestEntity {
  const Guests({
    required this.firstName,
    required this.lastName,
    required this.avatar,
  }):super(
    name: '$firstName $lastName',
    avatar: avatar,
  );

  factory Guests.fromJson(dynamic json) {
    return Guests(
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
    );
  }

  final String firstName;
  final String lastName;
  final String avatar;

  Guests copyWith({
    String? firstName,
    String? lastName,
    String? avatar,
  }) =>
      Guests(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        avatar: avatar ?? this.avatar,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['avatar'] = avatar;
    return map;
  }
}
