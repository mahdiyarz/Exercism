import 'package:exercism/two_fer.dart';
import 'package:test/test.dart';

void main() {
  group('TwoFer', () {
    test('no name given', () {
      final result = twoFer();
      expect(result, equals('One for you, one for me.'));
    }, skip: false);

    test('a name given', () {
      final result = twoFer('Alice');
      expect(result, equals('One for Alice, one for me.'));
    }, skip: true);

    test('another name given', () {
      final result = twoFer('Bob');
      expect(result, equals('One for Bob, one for me.'));
    }, skip: true);
  });
}
