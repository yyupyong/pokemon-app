class Paging<E> {
  const Paging({
    required this.totalCount,
    required this.items,
  });
  final int totalCount;
  final List<E> items;

  // ignore: sort_constructors_first
  factory Paging.fromJson(
    Map<String, dynamic> json,
    E Function(Map<String, dynamic> json) fromJsonE,
  ) {
    final items = json['results'] as List;
    final itemsJson =
        items.map((dynamic e) => e as Map<String, dynamic>).toList();
    return Paging<E>(
      totalCount: json['count'] as int,
      items: itemsJson.map(fromJsonE).toList(),
    );
  }
}
