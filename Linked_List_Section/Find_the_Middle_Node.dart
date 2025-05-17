class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value);
}

Node<T>? findMiddle<T>(Node<T>? head) {
  var slow = head;
  var fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  return slow;
}

void main() {
  var node1 = Node(10);
  var node2 = Node(20);
  var node3 = Node(30);
  var node4 = Node(40);
  node1.next = node2;
  node2.next = node3;
  node3.next = node4;

  var middle = findMiddle(node1);
  print("Middle: ${middle?.value}"); // Output: 30
}
