// Function to check if parentheses are balanced
bool isBalanced(String input) {
  List<String> stack = [];

  // Loop through each character in the string
  for (var char in input.split('')) {
    if (char == '(') {
      stack.add(char); // Add open parentheses to stack
    } else if (char == ')') {
      if (stack.isEmpty) return false; // No matching open parenthesis
      stack.removeLast(); // Remove last open parenthesis
    }
  }

  return stack.isEmpty; // True if stack is empty, meaning balanced
}