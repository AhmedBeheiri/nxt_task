part of 'preferences_cubit.dart';


@immutable
class PreferencesState extends Equatable {
  const PreferencesState({
    this.darkTheme = false,
  });

  factory PreferencesState.fromMap(Map<String, dynamic> map) {
    return PreferencesState(
      darkTheme: map['darkTheme'] as bool,
    );
  }

  final bool darkTheme;

  PreferencesState copyWith({
    bool? darkTheme,
  }) {
    return PreferencesState(
      darkTheme: darkTheme ?? this.darkTheme,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'darkTheme': darkTheme,
    };
  }

  @override
  List<Object?> get props => [darkTheme];

}
