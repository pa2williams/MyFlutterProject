class CoPilotDiary {
  int? id;
  String? dateofEvent;
  String? detail;
  String? category;
  String? subCategory;
  String? prioriy;
  int? weeks;
  String? datediff;
  String? dayName;
  String? shortDetail;

  CoPilotDiary({
    this.id,
    this.dateofEvent,
    this.detail,
    this.category,
    this.subCategory,
    this.prioriy,
    this.weeks,
    this.datediff,
    this.dayName,
    this.shortDetail,
  });

  CoPilotDiary.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dateofEvent = json['dateofEvent'];
    detail = json['detail'];
    category = json['category'];
    subCategory = json['subCategory'];
    prioriy = json['priority'];
    weeks = json['weeks'];
    datediff = json['datediff'];
    dayName = json['dayName'];
    shortDetail = json['shortDetail'];
  }

  @override
  String toString() => 'Post(id: $id, detail: $detail)';
}