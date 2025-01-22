// Function to reverse a list and print its elements in reverse order
void reverseList(List<int> list) {
  // Stack to hold the elements of the list
  List<int> stack = [];

  // Push all list elements into the stack
  for (int element in list) {
    stack.add(element);
  }

  // Pop elements from the stack and print them (this will print in reverse order)
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}