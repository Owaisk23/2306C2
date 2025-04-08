import 'dart:io';
import 'bahl.dart';

void main() {
  try{
    BAHL owaisAccount = BAHL();
  print("Bank Al Habib Limited");
  print("-------------------------------------------");
  print("What operation do you want to perform?");
  print("1. Deposit \n 2. Withdraw \n 3. Balance Inquiry");

  int choice = int.parse(stdin.readLineSync()!);
  if (choice > 0 || choice < 4) {
    if (choice == 1) {
      print("Enter amount to deposit: ");
      num amount = num.parse(stdin.readLineSync()!);
      owaisAccount.deposit(amount);
      owaisAccount.balanceInquiry();
    } else if (choice == 2) {
      print("Enter amount to withdraw: ");
      num amount = num.parse(stdin.readLineSync()!);
      owaisAccount.withdraw(amount);
      owaisAccount.balanceInquiry();
    } else if (choice == 3) {
      owaisAccount.balanceInquiry();
    } else {
      print("Invalid choice. Please try again.");
    }
  }
  } on FormatException{
    print("Form must be filled in correctly");
  } catch (e) {
    print("An error occurred: $e");
  }
}
