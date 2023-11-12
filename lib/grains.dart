BigInt square(final int n) {
  late BigInt result;
  late List<int> squareList;

  if (n >= 1 && n <= 64) {
    squareList = List.generate(n, (index) => index + 1);
    print(squareList);

    result = BigInt.parse(squareList.reduce((previous, current) {
      return previous * 2;
    }).toString())
        .abs();
    print(result);
    return result;
  } else {
    throw ArgumentError('square must be between 1 and 64');
  }
}

BigInt total() {
  BigInt result = BigInt.from(0);
  late List<int> squareList;

  for (var i = 1; i < 65; i++) {
    squareList = List.generate(i, (index) => index + 1);

    result = BigInt.parse(squareList.reduce((previous, current) {
          return previous * 2;
        }).toString())
            .abs() +
        result;
  }

  return result;
}
