enum EdgeType { directed, undirected }

class Vertex<T> {
  const Vertex({
    required this.index,
    required this.data,
  });
  final int index;
  final T data;
  @override
  String toString() => data.toString();
}

class Edge<T> {
  const Edge(
    this.source,
    this.destination, [
    this.weight,
  ]);
  final Vertex<T> source;
  final Vertex<T> destination;
  final double? weight;
}

abstract class Graph<E> {
  Iterable<Vertex<E>> get vertices;
  Vertex<E> createVertex(E data);
  void addEdge(
    Vertex<E> source,
    Vertex<E> destination, {
    EdgeType edgeType,
    double? weight,
  });
  List<Edge<E>> edges(Vertex<E> source);
  double? weight(
    Vertex<E> source,
    Vertex<E> destination,
  );
}

class AdjacencyList<E> implements Graph<E> {
  final Map<Vertex<E>, List<Edge<E>>> _connections = {};
  var _nextIndex = 0;
  @override
  Iterable<Vertex<E>> get vertices => _connections.keys;
  @override
  Vertex<E> createVertex(E data) {
    final vertex = Vertex(
      index: _nextIndex,
      data: data,
    );
    _nextIndex++;
    _connections[vertex] = [];
    return vertex;
  }

  @override
  void addEdge(
    Vertex<E> source,
    Vertex<E> destination, {
    EdgeType edgeType = EdgeType.undirected,
    double? weight,
  }) {
    _connections[source]?.add(
      Edge(source, destination, weight),
    );
    if (edgeType == EdgeType.undirected) {
      _connections[destination]?.add(
        Edge(destination, source, weight),
      );
    }
  }

  @override
  List<Edge<E>> edges(Vertex<E> source) {
    return _connections[source] ?? [];
  }

  @override
  double? weight(
    Vertex<E> source,
    Vertex<E> destination,
  ) {
    final match = edges(source).where((edge) {
      return edge.destination == destination;
    });
    if (match.isEmpty) return null;
    return match.first.weight;
  }

  @override
  String toString() {
    final result = StringBuffer();
    _connections.forEach((vertex, edges) {
      final destinations = edges.map((edge) {
        return edge.destination;
      }).join(', ');
      result.writeln('$vertex --> $destinations');
    });
    return result.toString();
  }
}
