import 'package:flutter/material.dart';

class SimpleInterestCalculator extends StatefulWidget {
  @override
  State<SimpleInterestCalculator> createState() =>
      _SimpleInterestCalculatorState();
}

class _SimpleInterestCalculatorState extends State<SimpleInterestCalculator> {
  late TextEditingController _amountController;
  late TextEditingController _roiController;
  late TextEditingController _tpController;

  double finalPrincipalAmount = 0;
  double totalInterest= 0;
  double totalAmount= 0;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
    _roiController = TextEditingController();
    _tpController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Simple Interest Calculator'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              children: [
                getCustomizedRowWidget('Principal Amount', 'Enter Amount',
                    false, _amountController),
                getCustomizedRowWidget('Rate of Interest',
                    'Enter Rate of Interest', false, _roiController),
                getCustomizedRowWidget(
                    'Time Period', 'Enter Time Period', false, _tpController),
                Container(
                  color: Colors.blue,
                  margin: EdgeInsets.only(top: 10),
                  child: TextButton(
                    onPressed: () {
                      calculateSPIAndDisplay();
                    },
                    child: const Text(
                      'Calculate',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                getCustomizedRowWidget(
                    'Principal Amount', finalPrincipalAmount.toString(), true, null),
                getCustomizedRowWidget(
                    'Total Interest', totalInterest.toString(), true, null),
                getCustomizedRowWidget('Total Amount', totalAmount.toString(), true, null),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calculateSPIAndDisplay(){
    setState(() {
      double amount = double.parse(_amountController.text);
      double roi = double.parse(_roiController.text);
      double tp = double.parse(_tpController.text);
      finalPrincipalAmount = amount;
      totalInterest = (amount * (1 + (roi / 100) * tp))-finalPrincipalAmount;
      totalAmount = totalInterest+finalPrincipalAmount;
      print('amount::$amount:::roi:::$roi::::tp:::$tp');
    });
  }

  Widget getCustomizedRowWidget(
      title, hintText, bool isAnswerWidget, controller) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(title),
          ),
          isAnswerWidget
              ? Expanded(
            flex: 2,
            child: Text(hintText),
          )
              : Expanded(
            flex: 2,
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

