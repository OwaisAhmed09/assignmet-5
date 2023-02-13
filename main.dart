import 'dart:io';

void main() {
  // TASK 1 Check Info 5 Times Done
  var counter = 0;
  var isloggedin = false;

  while (isloggedin == false) {
    print("Enter your email:");
    var email = stdin.readLineSync();
    print("Enter your password:");
    var password = int.parse(stdin.readLineSync()!);

    if (email == "owaissikander09@gmail.com" && password == 123) {
      print("login successfull");
      isloggedin = true;
    } else {
      counter++;
      if (counter > 4) {
        isloggedin = false;
        print("Try after sometime");
        return null;
      } else {
        print("Please Enter Correct Email & Password");
      }
    }
  }

// Function for markSheet 

markSheetFunction({ required name, required Urdu, required English, required Math, required Biology, required Chemestry, sec = "C" } ) {
  var obtainedmarks = Urdu + English + Math + Biology + Chemestry;
  var totalmarks = 500;
  double percentage = (obtainedmarks * 100) / totalmarks;
  print("Name: $name");
  print("Section: $sec");
  print("Urdu marks: $Urdu");
  print("English marks: $English");
  print("Math marks: $Math");
  print("Biology marks: $Biology");
  print("Chemestry marks: $Chemestry");
  print("Total Obtained Marks is: $totalmarks");
  print("Your Percentage is: $percentage %");
  return {"name": name, "sec": sec, "percentage": percentage};
}

// Function for Table

tableFunction(tableNumber) {
  for (var i = 1; i <= 10; i++) {
    print("$tableNumber X $i = ${tableNumber * i}");
  }
}

}
