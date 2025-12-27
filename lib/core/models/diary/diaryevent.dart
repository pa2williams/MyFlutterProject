class DiaryEvent {
  String? date;
  String? title;
  String? category;
  String? subCategory;

  DiaryEvent({this.date, this.title, this.category, this.subCategory});

  DiaryEvent.fromJson(Map<DateTime, dynamic> json) {
    date = json['date'];
    title = json['title'];
    category = json['category'];
    subCategory = json['subCategory'];
  }
}
