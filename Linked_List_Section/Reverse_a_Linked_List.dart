class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value);
}

Node<T>? reverseList<T>(Node<T>? head) {
  Node<T>? prev;
  Node<T>? current = head;

  while (current != null) {
    var next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  return prev;
}

void main() {
  var node1 = Node(1);
  var node2 = Node(2);
  var node3 = Node(3);
  node1.next = node2;
  node2.next = node3;

  var newHead = reverseList(node1);

  var current = newHead;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
  
}
