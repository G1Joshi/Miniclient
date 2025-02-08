/// Optional represents a value that may or may not be present.
/// Unlike Result, it doesn't carry error information - it simply represents
/// the presence or absence of a value.
abstract class Optional<T> {
  const Optional._();

  /// Creates a Some containing the given value
  factory Optional.some(T value) = Some._;

  /// Creates a None
  factory Optional.none() = None._;

  /// Transforms the Optional using the given functions
  B fold<B>(B Function(T value) ifSome, B Function() ifNone);

  /// Returns true if this Optional contains a value
  bool get isSome => fold((_) => true, () => false);

  /// Returns true if this Optional contains no value
  bool get isNone => !isSome;

  /// Returns the contained value or null if none
  T? get valueOrNull => fold((v) => v, () => null);
}

/// Represents the presence of a value
class Some<T> extends Optional<T> {
  const Some._(this._value) : super._();

  final T _value;

  T get value => _value;

  @override
  B fold<B>(B Function(T value) ifSome, B Function() ifNone) => ifSome(_value);

  @override
  bool operator ==(Object other) => other is Some && other._value == _value;

  @override
  int get hashCode => _value.hashCode;
}

/// Represents the absence of a value
class None<T> extends Optional<T> {
  const None._() : super._();

  @override
  B fold<B>(B Function(T value) ifSome, B Function() ifNone) => ifNone();

  @override
  bool operator ==(Object other) => other is None;

  @override
  int get hashCode => 0;
}

// Helper functions
Optional<T> some<T>(T value) => Some._(value);
Optional<T> none<T>() => None._();
