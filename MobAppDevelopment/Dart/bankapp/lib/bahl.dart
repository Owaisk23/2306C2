class BAHL{
  //private variable
  num _accountBalance = 1500;

  void deposit(num amount){
    try{
      if(amount <= 0){
        throw Exception("Invalid amount.");
      }
      else{
        _accountBalance += amount;
        print("Amount Deposited Successfully!");
      }
    }
    catch(e){
      print("Error: $e");
    }
  }

  void withdraw(num amount){
    try{
      if(amount <= 0){
        throw Exception("Invalid amount.");
      }
      else if(amount > _accountBalance){
        throw Exception("Insufficient balance.");
      }
      else{
        _accountBalance -= amount;
        print("Amount Withdrawn Successfully!");
      }
    }
    catch(e){
      print("Error: $e");
    }
  }

  void balanceInquiry(){
    print("Account Balance: $_accountBalance");
  }
}

