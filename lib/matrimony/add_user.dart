import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:matrimony/database.dart';
import 'package:matrimony/model/city_model.dart';

class AddUser extends StatefulWidget {
  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  CityModel model =
      CityModel(StateID1: -1, CityName1: 'Select City', CityID1: -1);

  bool isGetCity = true;
  DateTime selectedDate = DateTime.now();
  final _formKey = GlobalKey<FormState>();
  late TextEditingController nameController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New User'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: FutureBuilder<List<CityModel>>(
                builder: (context, snapshot) {
                  if (snapshot.hasData && snapshot.data != null) {
                    if (isGetCity) {
                      model = snapshot.data![0];
                    }
                    return DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        items: snapshot.data!
                            .map((item) => DropdownMenuItem<CityModel>(
                                  value: item,
                                  child: Text(
                                    item.CityName.toString(),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList(),
                        value: model,
                        onChanged: (value) {
                          setState(() {
                            isGetCity = false;
                            model = value!;
                          });
                        },
                        icon: const Icon(
                          Icons.arrow_drop_down_outlined,
                        ),
                        buttonDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: Colors.black26,
                          ),
                          color: Colors.white24,
                        ),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white70,
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
                future: isGetCity ? MyDatabase().getCityListFromTbl() : null,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value!.trim().length == 0) {
                  return 'Enter Valid Name';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Enter Name',
              ),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              child: Text(
                getFormattedDateTime(selectedDate),
              ),
              onTap: _pickDateDialog,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  setState(
                    () async {
                      if (_formKey.currentState!.validate()) {
                        if (model.StateID1 == -1) {
                          showAlertDialog(context);
                        } else {
                          await MyDatabase().insertIntoUserTable(
                              model.CityId,
                              nameController.text.toString(),
                              selectedDate.toString());
                        }
                      }
                    },
                  );
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    AlertDialog alert = AlertDialog(
      title: Text("Alert"),
      content: Text("Please Select City"),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void _pickDateDialog() {
    showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime(1950),
            lastDate: DateTime.now())
        .then(
      (pickedDate) {
        if (pickedDate == null) {
          return;
        }
        setState(
          () {
            selectedDate = pickedDate;
          },
        );
      },
    );
  }

  String getFormattedDateTime(dateToFormat) {
    if (dateToFormat != null) {
      return DateFormat('dd-MM-yyyy').format(dateToFormat).toString();
    } else {
      return DateFormat('dd-MM-yyyy').format(DateTime.now()).toString();
    }
  }
}
