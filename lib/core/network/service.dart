// Importing necessary packages and modules
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

// Importing the ErrorInterceptor class
import 'error_interceptor.dart';

// Importing the service part file
part 'service.chopper.dart';

// Defining a constant for the token
// in real projects, this should be stored securely
const _token =
    'eyJhbGciOiJSUzI1NiJ9.eyJpZCI6MzAzLCJ0eXBlIjoidXNlciIsInJhbiI6IkJORU5WSVBOTlFUWVBMS0tVQ0JWIiwic3RhdHVzIjoxfQ.YGV-jGKZj1Lp4SqlM3aiF6Aov6YVF6lZRMpKvx_Zdrpjj4C1zE-JSTKtjVboQ9de58TUViyVOc4JwiktjF_4yxnYzIrw449s584j2GiqUpxfp6OPmfAj8BAbfN_M4RoU5PXEjhcNVh5uNRtxtvxZtpECrl72_22T4he3LbqISMNHzVh5eprIKIFLt_pM7cyRKt3Njf8I89CLnq5nUpiDHnMMForamKq9jubmiYPOHpFvijEE3-jusRk0F1T32zMY_0AELXnpqhbbx6HtmMdxBahnrUNyznacdVwaSrNus8vX01N8zEcfRvkRzYuqjnZXr9jrm2iriHq80iicUG99GQ';

// Using the injectable package to inject the NetworkService
@injectable
// Defining a class named NetworkService that extends ChopperService
@ChopperApi()
abstract class NetworkService extends ChopperService {
  // Defining a static method to create an instance of NetworkService
  static NetworkService create() {
    return NetworkService.init();
  }

  // Defining the constructor for NetworkService
  NetworkService();

  // Defining a factory method to initialize NetworkService
  @factoryMethod
  factory NetworkService.init() {
    // Creating a ChopperClient
    final client = ChopperClient(
      // Setting the base URL for the client
      baseUrl: Uri.parse(
          'https://qa-testing-backend-293b1363694d.herokuapp.com/api/v3'),
      // Registering the services for the client
      services: [_$NetworkService()],
      // Adding interceptors to the client
      interceptors: [
        // Adding a HeadersInterceptor to add headers to each request
        const HeadersInterceptor(
            {'Content-Type': 'application/json', 'Authorization': 'Bearer $_token'}),
        // Adding a HttpLoggingInterceptor to log each request and response
        HttpLoggingInterceptor(),
        // Adding the ErrorInterceptor to handle errors
        ErrorInterceptor(),
      ],
      // Setting the converter for the client
      converter: const JsonConverter(),
    );
    // Returning an instance of NetworkService
    return _$NetworkService(client);
  }

  // Defining a method to get reservations
  @Get(path: 'mobile-guests/user-events')
  Future<Response> getReservations();
}