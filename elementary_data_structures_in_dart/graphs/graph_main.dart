import 'graph_data_structure.dart';

void main() {
  final graph = AdjacencyList<String>();
  final singapore = graph.createVertex('Singapore');
  final tokyo = graph.createVertex('Tokyo');
  final hongKong = graph.createVertex('Hong Kong');
  final detroit = graph.createVertex('Detroit');
  final sanFrancisco = graph.createVertex('San Francisco');
  final washingtonDC = graph.createVertex('Washington DC');
  final austinTexas = graph.createVertex('Austin Texas');
  final seattle = graph.createVertex('Seattle');
  graph.addEdge(singapore, hongKong, weight: 300);
  graph.addEdge(singapore, tokyo, weight: 500);
  graph.addEdge(hongKong, tokyo, weight: 250);
  graph.addEdge(tokyo, detroit, weight: 450);
  graph.addEdge(tokyo, washingtonDC, weight: 300);
  graph.addEdge(hongKong, sanFrancisco, weight: 600);
  graph.addEdge(detroit, austinTexas, weight: 50);
  graph.addEdge(austinTexas, washingtonDC, weight: 292);
  graph.addEdge(sanFrancisco, washingtonDC, weight: 337);
  graph.addEdge(washingtonDC, seattle, weight: 277);
  graph.addEdge(sanFrancisco, seattle, weight: 218);
  graph.addEdge(austinTexas, sanFrancisco, weight: 297);
  print(graph);
}
