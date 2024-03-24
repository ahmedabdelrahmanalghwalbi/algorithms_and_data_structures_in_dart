/* What is Recursion?

- Dart Recursion is the method where a function calls itself as its subroutine. It is used to solve the complex
  problem by dividing it into sub-part. A function which is called itself again and again or recursively,
  then this process is called recursion.

- Recursion makes many calls to the same function; however, there should be a base case to terminate the recursion.

- Recursion uses the divide and conquers technique to solve a complex mathematical computation task.
  It divides the large task into small chunks.

- Recursion is not recommended to solve all types of problems. However, it is best for a few questions such as 
  searching, sorting, Inorder/Preorder/Postorder, Tree Traversal, and DFS of Graph algorithms.
  But, while using recursion, it must be implemented carefully; otherwise, it turns into the infinite loop.
*/

/* Characteristics of Recursive Function
- A recursive function is a unique form of a function where function calls itself.
- A valid base case is required to terminate the recursive function.
- It is slower than the iteration because of stack overheads.  ***
*/

/* Recursion (vs) Iterators
- Iteration is imperative, and recursion is declarative.
- recursion makes the code look more clean and elegant.
- Reading and making sense of a code is easier when it is declarative.
- the iterative approach provides better performance when compared with recursion.
- Finding out complexity for a recursive function is not as straightforward as loops. Recursion, if not appropriately configured, leads to stack overflow errors.
- The iterators can be an option to solve problems, but recursion is recommended to the programmers to deal 
  with complex problems because it is an effective approach of problem-solving technique.
  It requires less time and code to evaluate the same complex task.
*/