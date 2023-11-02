import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int inputValue) {
    int result = 0;

    for (var i = 1; i <= inputValue; i++) {
      result = i + result;
    }
    result *= result;

    return result;
  }

  int sumOfSquares(int inputValue) {
    int result = 0;

    for (var i = 1; i <= inputValue; i++) {
      result = (i * i) + result;
    }

    return result;
  }

  int differenceOfSquares(int inputValue) {
    int squareOfSum = 0;
    int sumOfSquares = 0;

    for (var i = 1; i <= inputValue; i++) {
      squareOfSum = i + squareOfSum;
      sumOfSquares = (i * i) + sumOfSquares;
    }
    squareOfSum *= squareOfSum;

    return squareOfSum - sumOfSquares;
  }

  int squareOfSum2(int value) => pow(
          List<int>.generate(value, (index) => index + 1)
              .reduce((previous, current) => previous + current),
          2)
      .toInt();

  int sumOfSquares2(int value) =>
      List<int>.generate(value, (index) => pow(index + 1, 2).toInt())
          .reduce((previous, current) => previous + current);

  int differenceOfSquares2(int value) =>
      squareOfSum(value) - sumOfSquares(value);
}
