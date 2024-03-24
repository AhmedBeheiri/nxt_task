// Importing necessary packages and modules
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

// Importing the PreferencesState part file
part 'preferences_state.dart';

// Using the injectable package to inject the PreferencesCubit
@injectable
// Defining a class named PreferencesCubit that extends HydratedCubit with a state of PreferencesState
class PreferencesCubit extends HydratedCubit<PreferencesState> {
  // Defining the constructor for PreferencesCubit
  PreferencesCubit() : super(const PreferencesState());

  // Defining a method to toggle the theme
  void toggleTheme() {
    // Emitting a new state with the toggled darkTheme value
    emit(state.copyWith(darkTheme: !state.darkTheme));
  }

  // Overriding the fromJson method to convert a Map to a PreferencesState
  @override
  PreferencesState? fromJson(Map<String, dynamic> json) =>
      PreferencesState.fromMap(json);

  // Overriding the toJson method to convert a PreferencesState to a Map
  @override
  Map<String, dynamic>? toJson(PreferencesState state) => state.toMap();
}
