// Node class to represent an element in the linked list
class Node {
  int value;
  Node? next;

  Node(this.value);
}

// Function to print the linked list in reverse order using recursion
void printLinkedListReverse(Node? node) {
  if (node == null) return;
  printLinkedListReverse(node.next); // Recurse for next node
  print(node.value); // Print the current node
}

// Function to find the middle node in a linked list
Node? findMiddle(Node? head) {
  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow?.next;
    fast = fast.next?.next;
  }

  return slow;
}

// Function to reverse the linked list
Node? reverseLinkedList(Node? head) {
  Node? prev = null;
  Node? current = head;

  while (current != null) {
    Node? next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  return prev;
}

// Function to remove all occurrences of a specific value from the linked list
Node? removeAllOccurrences(Node? head, int value) {
  while (head != null && head.value == value) {
    head = head.next;
  }

  Node? current = head;

  while (current != null && current.next != null) {
    if (current.next?.value == value) {
      current.next = current.next?.next;
    } else {
      current = current.next;
    }
  }

  return head;
}