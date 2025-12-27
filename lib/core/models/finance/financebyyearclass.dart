class FinanceByYearClass {
  String? year;
  String? valuation;
  String? variance;

  FinanceByYearClass({this.year, this.valuation, this.variance});

  // shortDetaild constructor
  FinanceByYearClass.fromJson(Map<String, dynamic> json)
    : year = json['Year'],
      valuation = json['Valuation'].toString(),
      variance = json['Variance'].toString();

  // method
  Map<String, dynamic> toJson() {
    return {
      'period': year,
      'valuation': valuation,
      'variance': variance,
    };
  }
}