import 'package:exercism/hello_world.dart';
import 'package:test/test.dart';

void main() {
  test('Say Hi!', () {
    expect(HelloWorld().hello(), equals('Hello, World!'));
  });
}