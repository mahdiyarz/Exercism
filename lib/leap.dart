class Leap {
  bool leapYear(int inputYear) {
    final bool divisibleBy4 = inputYear % 4 == 0;
    final bool divisibleBy100 = inputYear % 100 == 0;
    final bool divisibleBy400 = inputYear % 400 == 0;

    if (divisibleBy100 && divisibleBy400) {
      return true;
    }
    if (divisibleBy4 && !divisibleBy100 && !divisibleBy400) {
      return true;
    }
    return false;
  }
}
