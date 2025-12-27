class FinanceByPeriodClass {
  String? period;
  String? valuation;
  String? variance;

  FinanceByPeriodClass({this.period, this.valuation, this.variance});

  // shortDetaild constructor
  FinanceByPeriodClass.fromJson(Map<String, dynamic> json)
    : period = json['Period'],
      valuation = json['Valuation'].toString(),
      variance = json['Variance'].toString();

  // method
  Map<String, dynamic> toJson() {
    return {
      'period': period,
      'valuation': valuation,
      'variance': variance,
    };
  }
}