import 'package:flutter/material.dart';

class RadioAndChackBox extends StatefulWidget {
  const RadioAndChackBox({super.key});

  @override
  State<RadioAndChackBox> createState() => _RadioAndChackBoxState();
}

class _RadioAndChackBoxState extends State<RadioAndChackBox> {
  int selectedProfession = -1;
  int selectedGender = -1;
  bool remember = false;

  Map<int, dynamic> genderMap = {1: "Doctor", 2: "Female", 3: "Other"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio and Checkbox"),
        centerTitle: true,
        elevation: 3,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Gender"),
                  RadioListTile(
                    toggleable: true,
                    title: Text(
                      "Male",
                      style: TextStyle(
                          fontWeight: selectedGender == 0
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                    value: 0,
                    secondary: Icon(Icons.language),
                    groupValue: selectedGender,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value ?? -1;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      "Female",
                      style: TextStyle(
                          fontWeight: selectedGender == 1
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                    value: 1,
                    secondary: Icon(Icons.language),
                    groupValue: selectedGender,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      "Other",
                      style: TextStyle(
                          fontWeight: selectedGender == 2
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                    value: 2,
                    secondary: Icon(Icons.language),
                    groupValue: selectedGender,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Profession"),
                  RadioListTile(
                    title: Text(
                      "Engineer",
                      style: TextStyle(
                          fontWeight: selectedProfession == 0
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                    value: 0,
                    activeColor: Colors.green,
                    groupValue: selectedProfession,
                    onChanged: (value) {
                      setState(() {
                        selectedProfession = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Checkbox"),
                  CheckboxListTile(
                    title: Text(
                      "Remember me",
                      style: TextStyle(
                          fontWeight:
                              remember ? FontWeight.bold : FontWeight.normal),
                    ),
                    value: remember,
                    onChanged: (value) {
                      setState(() {
                        remember = value!;
                      });
                    },
                  )
                ],
              ),
            ),
            TextButton(
                onPressed: () {
                  var genderText = genderMap[selectedGender] ?? 'None';
                
                  print('Selected Gender: $genderText');
                  // print('Selected Profession: $professionText');
                },
                child: Text("Go to next"))
          ],
        ),
      ),
    );
  }
}
