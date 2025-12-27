class FinanceTransactionsClass {
  String? date;
  String? period;
  String? recordType;
  String? investmentType;
  String? provider;
  String? credit;
  String? debit;
  String? notes;

  FinanceTransactionsClass({
    this.date,
    this.period,
    this.recordType,
    this.investmentType,
    this.provider,
    this.credit,
    this.debit,
    this.notes,
  });

  // shortDetaild constructor
  FinanceTransactionsClass.fromJson(Map<String, dynamic> json)
    : provider = json['Provider'].toString(),
      date = json['Date'].toString(),
      period = json['Period'].toString(),
      recordType = json['RecordType'].toString(),
      investmentType = json['InvestmentType'],
      credit = json['Credit'].toString(),
      debit = json['Debit'].toString(),
      notes = json['Notes'].toString();

  // method
  Map<String, dynamic> toJson() {
    return {
      'provider': provider,
      'date': date,
      'period': period,
      'recordtype': recordType,
      'investmentType': investmentType,
      'credit': credit,
      'debit': debit,
      'notes': notes,
    };
  }
}
