class FinanceMaturitiesClass {
  String? provider;
  String? accountNumber;
  String? investmentType;
  String? maturityDate;
  String? interestRate;
  String? timeDifference;
  String? status;
  String? startDate;
  String? startValue;
  String? currentValue;
  String? plValue;
  String? plPercent;

  FinanceMaturitiesClass({this.provider, this.accountNumber, 
  this.investmentType,this.maturityDate,this.interestRate,
  this.timeDifference,this.status,this.startDate,
  this.startValue,this.currentValue,
  this.plPercent,this.plValue,});
  
  // constructor
  FinanceMaturitiesClass.fromJson(Map<String, dynamic> json)
    : provider = json['Provider'],
      accountNumber = json['Account_Number'].toString(),
      investmentType = json['Investment_Type'].toString(),
      maturityDate = json['Maturity_Date'].toString(),
      interestRate = json['Interest_Rate'].toString(),
      timeDifference = json['Time_Difference'].toString(),
      startDate = json['Start_Date'].toString(),
      status = json['Status'].toString(),
      startValue = json['Start_Value'].toString(),
      currentValue= json['Current_Value'].toString(),
      plValue = json['PL_Value'].toString(),
      plPercent = json['PL_Percent'].toString();
      

  // method
  Map<String, dynamic> toJson() {
    return {
      'provider': provider,
      'accountNumber': accountNumber,
      'investmentType': investmentType,
       'maturityDate': maturityDate,
       'interestRate': interestRate,
       'timeDifference': timeDifference,
       'status': status,
       'startDate': startDate,
    };
  }
}