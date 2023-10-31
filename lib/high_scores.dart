class HighScores {
  final List<int> scores;
  HighScores(this.scores);

  int latest() {
    return scores.last;
  }

  int personalBest() {
    int compare = 0;

    for (var i = 0; i < scores.length; i++) {
      if (scores[i] > compare) {
        compare = scores[i];
      }
    }
    return compare;
  }

  List<int> personalTopThree() {
    final List<int> result = [];
    final List<int> addToList = [];

    for (var i = 0; i < scores.length; i++) {
      print(
          '---------------------- score[$i]: ${scores[i]} / result length: ${result.length}');
      bool alreadyAdded = false;

      if (result.length == 0) {
        print('#start');
        addToList.add(scores[i]);
        alreadyAdded = true;
      }

      for (var j = 0; j < result.length; j++) {
        print(
            '---------------------- result[$j]: ${result[j]} / length: ${result.length}');

        if (scores[i] > result[j] && !alreadyAdded) {
          print('#0');
          addToList.insert(j, scores[i]);
          alreadyAdded = true;
        }

        if (scores[i] <= result[j] && !alreadyAdded) {
          if (j == 0 && result.length == 1) {
            print('#1');
            addToList.add(scores[i]);
            alreadyAdded = true;
          }

          if (j != 0 && j < result.length - 1 && scores[i] > result[j + 1]) {
            print('#2');
            addToList.insert(j + 1, scores[i]);
            alreadyAdded = true;
          }

          if (j != 0 && j == result.length - 1) {
            print('#3');
            addToList.add(scores[i]);
            alreadyAdded = true;
          }
        }
      }
      result
        ..clear()
        ..addAll(addToList);

      print('finish $i loop / result: $result');
    }

    print(
        'top three: ${result.getRange(0, result.length > 3 ? 3 : result.length).toList()}');

    return result.getRange(0, result.length > 3 ? 3 : result.length).toList();
  }
}

void main(List<String> args) {
  final scoresClass =
      HighScores(<int>[40, 2, 1, 38, 5, 50, 6, 42, 100, 1, 0, 80]);

  scoresClass.personalTopThree();
}
