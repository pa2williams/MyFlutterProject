 

class Event {
  final String id;
  final String title;
  final String category;
  final String subCategory;
  final String priority;

  Event({
    required this.id,
    required this.title,
    required this.category,
    required this.subCategory,
    required this.priority,
  });

  @override
  String toString() => title;
}
