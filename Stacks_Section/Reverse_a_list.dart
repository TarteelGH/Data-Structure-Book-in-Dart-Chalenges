void reverseList(List<int> list) {
  List<int> stack = [];

  for (int i = 0; i < list.length; i++) {
    stack.add(list[i]);
  }

  while (stack.isNotEmpty) {
    int last = stack.removeLast();
    print(last);
  }
}

void main() {
  reverseList([1, 2, 3, 4, 5]);
}
