class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value);
}

Node<T>? removeAll<T>(Node<T>? head, T value) {
  // Skip matching nodes at the start
  while (head != null && head.value == value) {
    head = head.next;
  }

  var current = head;

  while (current != null && current.next != null) {
    if (current.next!.value == value) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }

  return head;
}

void main() {
  var node1 = Node(1);
  var node2 = Node(2);
  var node3 = Node(2);
  var node4 = Node(3);
  node1.next = node2;
  node2.next = node3;
  node3.next = node4;

  var newHead = removeAll(node1, 2);

  var current = newHead;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
  // Output: 1 3
}
