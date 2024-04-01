import 'queue_implementations/queue_using_list.dart';

void main() {
  print("Testing the List-Based Implementation");
  final QueueListBasedImplementation<String> queueListBased =
      QueueListBasedImplementation<String>();
  queueListBased.enqueue("ahmed");
  queueListBased.enqueue("abdelrahman");
  queueListBased.enqueue("ali");
  queueListBased.enqueue("ali");
  print("the peek of the queue :- ${queueListBased.peek}");
  print(queueListBased.toString());
  queueListBased.dequeue();
  print(queueListBased.toString());
}
