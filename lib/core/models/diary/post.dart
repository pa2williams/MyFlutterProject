class Post {
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

  Post({this.id, this.dateofEvent, this.detail, this.category, this.subCategory,this.prioriy,this.weeks,this.datediff,this.dayName,this.shortDetail});

  // Post.fromJson(Map<String, dynamic> json) {
  //   albumId = json['albumId'];
  //   id = json['id'];
  //   title = json['title'];
  //   url = json['url'];
  //   thumbnailUrl = json['thumbnailUrl'];
  // }

 Post.fromJson(Map<String, dynamic> json) {
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

}