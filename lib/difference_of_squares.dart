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
}
