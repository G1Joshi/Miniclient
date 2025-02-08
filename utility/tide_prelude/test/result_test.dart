import 'package:flutter_test/flutter_test.dart';
import 'package:tide_prelude/tide_prelude.dart';

void main() {
  // map() example and test
  test('map transforms success value', () {
    // Real-world example: Converting API response data
    final userJson = {'id': 1, 'name': 'John'};
    final result = success(userJson)
        .map((json) => 'User ${json['name']} has ID ${json['id']}');

    expect(result.getOrNull(), equals('User John has ID 1'));
  });

  // flatMap() example and test
  test('flatMap chains operations that may fail', () {
    // Real-world example: Database operations
    Result<String, Exception> validateEmail(String email) {
      return email.contains('@')
          ? success(email)
          : failure(Exception('Invalid email'));
    }

    Result<String, Exception> saveToDb(String email) {
      return success('Saved $email');
    }

    final result =
        success('test@example.com').flatMap(validateEmail).flatMap(saveToDb);

    expect(result.getOrNull(), equals('Saved test@example.com'));
  });

  // asyncFlatMap() example and test
  test('asyncFlatMap handles async operations', () async {
    // Real-world example: HTTP requests
    Future<Result<String, Exception>> fetchUserData(int id) async {
      // Simulated API call
      return success('User data for ID $id');
    }

    final result = await success(123).asyncFlatMap((id) => fetchUserData(id));

    expect(result.getOrNull(), equals('User data for ID 123'));
  });

  // forEach() example and test
  test('forEach executes side effects', () {
    // Real-world example: Logging successful operations
    String logMessage = '';
    success('Operation completed').forEach((msg) => logMessage = 'LOG: $msg');

    expect(logMessage, equals('LOG: Operation completed'));
  });

  // getOrElse() example and test
  test('getOrElse provides fallback value', () {
    // Real-world example: Default configuration values
    final config = failure<String, Exception>(Exception('Config not found'))
        .getOrElse(() => 'default_config');

    expect(config, equals('default_config'));
  });

  // getOrNull() example and test
  test('getOrNull returns null for failures', () {
    // Real-world example: Optional cache retrieval
    final cachedValue =
        failure<String, Exception>(Exception('Cache miss')).getOrNull();

    expect(cachedValue, isNull);
  });

  // fromAsync() example and test
  test('fromAsync handles Future operations', () async {
    // Real-world example: File operations
    Future<String> readFile() async {
      return 'file contents';
    }

    final result = await Result.fromAsync(readFile);
    expect(result.getOrNull(), equals('file contents'));
  });

  // fromAction() example and test
  test('fromAction handles synchronous operations', () {
    // Real-world example: Parsing operations
    int parseInteger(String input) => int.parse(input);

    final result = Result.fromAction(() => parseInteger('123'));
    expect(result.getOrNull(), equals(123));
  });

  // fromNullable() example and test
  test('fromNullable handles null values', () {
    // Real-world example: Optional user input
    String? userInput;
    final result = Result.fromNullable(
      userInput,
      () => Exception('No input provided'),
    );

    expect(result.getOrNull(), isNull);
  });

  // fromPredicate() example and test
  test('fromPredicate validates conditions', () {
    // Real-world example: Age verification
    final age = 20;
    final result = Result.fromPredicate(
      age >= 18,
      () => 'Access granted',
      () => Exception('Must be 18 or older'),
    );

    expect(result.getOrNull(), equals('Access granted'));
  });
}
