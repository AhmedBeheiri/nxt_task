// Importing necessary packages and modules
import 'dart:convert';
import 'package:chopper/chopper.dart';
import '../error/exceptions.dart';

// Defining a class named ErrorInterceptor that implements ResponseInterceptor
class ErrorInterceptor implements ResponseInterceptor {
  // Overriding the onResponse method from ResponseInterceptor
  @override
  Future<Response> onResponse(Response response) async {
    // Checking if the response was not successful
    if (!response.isSuccessful) {
      try {
        // Decoding the error from the response
        final error = json.decode(response.error.toString());
        // Checking if the error message is not null
        if (error['message'] != null) {
          // Checking if the error message is a list
          if (error['message'] is List) {
            // Throwing a ServerException with the status code and the first error message
            throw ServerException(
                response.statusCode, error['message'][0]['message']);
          }
          // Throwing a ServerException with the status code and the error message
          throw ServerException(response.statusCode, error['message']);
        }
      } catch (_) {
        // Throwing a ServerException with the status code and a default error message
        throw ServerException(response.statusCode, 'An error occurred');
      }
      // Throwing a ServerException with the status code and a default error message
      throw ServerException(response.statusCode, 'An error occurred');
    } else {
      // If the response was successful, return the response
      return response;
    }
  }
}
