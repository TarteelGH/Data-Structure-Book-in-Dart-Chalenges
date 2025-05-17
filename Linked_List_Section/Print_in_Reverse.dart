class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value);
}

void printInReverse<T>(Node<T>? node) {
  if (node == null) return;
  printInReverse(node.next);
  print(node.value);
}

void main() {
  var node1 = Node(1);
  var node2 = Node(2);
  var node3 = Node(3);
  node1.next = node2;
  node2.next = node3;

  printInReverse(node1); // Output: 3 2 1
}
