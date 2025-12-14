// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class MyClasses {
  //My First Class - 31st July 2025

  String toTitleCase(String text) {
    if (text.isEmpty) return text;

    // Convert the whole string to lowercase first
    text = text.toLowerCase();

    // Split by spaces and capitalize each word
    return text
        .split(' ')
        .map((word) {
          if (word.isEmpty) return word;
          return word[0].toUpperCase() + word.substring(1);
        })
        .join(' ');
  }

  void main() {
    String input = "hELLo woRLd fLUTTER";
    String result = toTitleCase(input);
    print(result); // Output: "Hello World Flutter"
  }

  String formatmoney(String value) {
    // 1st September 2025
    return NumberFormat.simpleCurrency(
      locale: 'en-GB',
      decimalDigits: 2,
    ).format(double.parse(value.toString()));
  }

  String getDate(bool withtime) {
    // My second function - 31st July 2025
    if (withtime) {
      var now = DateTime.now();
      var formatter = DateFormat('E dd/MM/yyyy HH:mm');
      return formatter.format(now);
    } else {
      var now = DateTime.now();
      var formatter = DateFormat('E dd/MM/yyyy');
      return formatter.format(now);
    }
  }

  String convertDate(DateTime dateToConvert) {
    // 13th November 2025
    var now = dateToConvert;
    var formatter = DateFormat('EEEE dd MMMM yyyy');
    return formatter.format(now);
  }

  String getDiaryURL() {
    // My first function - 31st July 2025
    String liveURL = "";
    liveURL = "http://192.168.1.170:88/myWebService/webservice1.asmx/GetDiary";
    liveURL =
        "http://philwilliams.blogdns.com/mywebservice/JSONwebservice.asmx/A_DiaryJson";
    return liveURL;
  }

  bool isToday(String myDate) {
    // 27th November 2025
    DateTime now = DateTime.now();

    // Format it into dd/MM/yy
    String formattedDate = DateFormat("dd/MM/yyyy").format(now);

    if (formattedDate == myDate) {
      return true;
    } else {
      return false;
    }
  }

  void dateExample() {
    // 27th November 2025
    // Example string in dd/MM/yy format
    String dateString = "27/11/25";

    // Define the format
    DateFormat format = DateFormat("dd/MM/yy");

    // Parse the string into a DateTime object
    DateTime parsedDate = format.parse(dateString);

    // Get current date and time
    DateTime now = DateTime.now();

    // Compare
    if (parsedDate.isBefore(now)) {
      print("The date $dateString is before now.");
    } else if (parsedDate.isAfter(now)) {
      print("The date $dateString is after now.");
    } else {
      print("The date $dateString is the same as now.");
    }
  }

  
}


