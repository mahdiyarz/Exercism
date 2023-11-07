class WordCount {
  Map<String, int> countWords(String input) {
    final List<String> splitList = input
        .toLowerCase()
        .replaceAll('^', '')
        .split(RegExp(r'[&@$%&:.!,\s]+'))
        .where((element) => element.isNotEmpty)
        .toList();
    Map<String, int> result = {};

    for (var element in splitList) {
      if (element.startsWith('\'') && element != '\'') {
        int index = splitList.indexOf(element);
        element = element.substring(1);

        splitList
          ..removeAt(index)
          ..insert(index, element);
      }

      if (element.endsWith('\'') && element != '\'') {
        int index = splitList.indexOf(element);
        element = element.substring(0, element.length - 1);

        splitList
          ..removeAt(index)
          ..insert(index, element);
      }
      int count = 0;

      for (var i = 0; i < splitList.length; i++) {
        if (splitList[i] == element) {
          count = count + 1;
        }
      }

      if (element != '\'') {
        result[element] = count;
      }
    }

    print(result);

    return result;
  }
}

void main() {
  final wordCount = WordCount();

  wordCount.countWords(
      "That's the password: 'PASSWORD 123'!, cried the Special Agent.\nSo I fled.");
}
