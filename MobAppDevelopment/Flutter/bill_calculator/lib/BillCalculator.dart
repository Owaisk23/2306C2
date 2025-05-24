import 'package:bill_calculator/Result.dart';
import 'package:flutter/material.dart';

class BillCalculator extends StatefulWidget {
  const BillCalculator({ Key? key }) : super(key: key);

  @override
  _BillCalculatorState createState() => _BillCalculatorState();
}

class _BillCalculatorState extends State<BillCalculator> {
  final GlobalKey<FormState> myformkey = GlobalKey<FormState>();

  TextEditingController unitsController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController taxPercentController = TextEditingController();
// declaring the variables here;
// double? units;

  double units = 0,
      pricePerUnit = 0,
      taxPercent = 0,
      billAmount = 0,
      taxAmount = 0,
      finalBillAmount = 0;

  // creating the bill details map to store the values
  var billDetails = {};
  // function to calculate the bill
  void calculateBill() {
    if (myformkey.currentState!.validate()) {
      // initializing the variables here;
      units = double.parse(unitsController.text); //400
      pricePerUnit = double.parse(priceController.text); //10
      taxPercent = double.parse(taxPercentController.text);
      billAmount = units * pricePerUnit; //4000
      taxAmount = (billAmount * (taxPercent / 100)); //(4000 * 10/100)

      setState(() {
        finalBillAmount = billAmount + taxAmount; //4000 +400= 4400
      });

      billDetails = {
        'units': units,
        'pricePerUnit': pricePerUnit,
        'taxPercent': taxPercent,
        'billAmount': billAmount,
        'taxAmount': taxAmount,
        'finalBillAmount': finalBillAmount
      };
    Navigator.push(context,MaterialPageRoute(builder: (context)=>Result(billDetails)));

      print("Final Bill Amount : $finalBillAmount");
    } else {
      print("Please insert valid details");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "KE Energy Association",
            style: TextStyle(color: Colors.indigoAccent, fontSize: 25),
          ),
          centerTitle: true,
          actions: [],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Form(
              key: myformkey,
              child: ListView(
                children: [
                  Text(
                    "Enter the details",
                    style: TextStyle(fontSize: 22, color: Colors.indigoAccent),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter the number of units consumed",
                      prefixIcon: Icon(Icons.electric_bolt_outlined),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      }
                    },
                    controller: unitsController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter the price per unit",
                      prefixIcon: Icon(Icons.monetization_on),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      }
                    },
                    controller: priceController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter the tax percentage",
                      prefixIcon: Icon(Icons.percent),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      }
                    },
                    controller: taxPercentController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // ElevatedButton(onPressed: calculateBill, child:
                  // Text("Calculate"))

                  GestureDetector(
                    onTap: calculateBill,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.indigoAccent),
                      child: Center(
                          child: Text(
                        "Calculate Bill",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),

                  // SizedBox(
                  //   height: 60,
                  // ),
                  // Text(finalBillAmount != 0
                  //     ? "Final Bill Amount:$finalBillAmount"
                  //     : "Enter values to get your bill")
                ],
              )
              ),
        )
        );
  }
}