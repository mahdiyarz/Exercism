class ArmstrongNumbers {
  // bool isArmstrongNumber(String input) {
  //   List<String> inputList = input.split('');
  //   BigInt result = BigInt.from(0);

  //   for (var i = 0; i < inputList.length; i++) {
  //     BigInt sum = BigInt.from(1);
  //     BigInt selectedValue = BigInt.from(int.parse(inputList[i]));

  //     for (var pow = 1; pow <= inputList.length; pow++) {
  //       sum *= selectedValue;
  //     }

  //     result += sum;
  //   }

  //   return input == result.toString();
  // }

  bool isArmstrongNumber(String input) {
    return input
            .split('')
            .map((e) => BigInt.parse(e).pow(input.length))
            .reduce((value, element) => value + element)
            .toString() ==
        input;
  }
}
