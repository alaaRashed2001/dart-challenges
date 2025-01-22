import 'Dart_Challenges/reverse_list.dart';
import 'Dart_Challenges/balanced_parentheses.dart';
import 'Dart_Challenges/linked_list_challenges.dart';

void main() {
  // Testing the reverse list function
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Reversed List:");
  reverseList(numbers);

  // Testing the balanced parentheses function
  String expression = "(())";
  print("\nIs balanced: ${isBalanced(expression)}");

  // Testing the linked list challenges

  // 1. Create a linked list: 1 -> 2 -> 3 -> 4 -> 5
  Node head = Node(1);
  head.next = Node(2);
  head.next?.next = Node(3);
  head.next?.next?.next = Node(4);
  head.next?.next?.next?.next = Node(5);

  print("\nLinked List in Reverse:");
  printLinkedListReverse(head);

  // 2. Find middle node
  Node? middle = findMiddle(head);
  print("\nMiddle Node: ${middle?.value}");

  // 3. Reverse the linked list and print it
  Node? reversedHead = reverseLinkedList(head);
  print("\nReversed Linked List:");
  Node? current = reversedHead;
  while (current != null) {
    print(current.value);
    current = current.next;
  }

  // 4. Remove all occurrences of 2 and print the updated list
  Node? updatedHead = removeAllOccurrences(head, 2);
  print("\nUpdated Linked List (after removing 2):");
  current = updatedHead;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
}