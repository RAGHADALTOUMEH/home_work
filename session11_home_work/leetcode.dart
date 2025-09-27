class Node {
  int data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  void append(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newNode;
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void reverse() {
    Node? prev = null;
    Node? current = head;
    Node? next;
    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
  }
}

void main() {
  LinkedList list = LinkedList();
  list.append(11);
  list.append(21);
  list.append(30);
  list.printList();
  list.reverse();
  print('..........');
  list.printList();
}
