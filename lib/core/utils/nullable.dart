// Defining a class named Nullable
class Nullable<T> {
  // Defining a constructor that takes a value of type T
  Nullable(this._value);

  // Declaring a private variable of type T
  final T _value;

  // Defining a getter method for the value
  T get value {
    // Returning the value
    return _value;
  }
}