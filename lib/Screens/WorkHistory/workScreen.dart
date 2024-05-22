import 'package:flutter/material.dart';
import 'package:resume_builder_app/Utils/Color/Color_List.dart';

class WorkHistory extends StatefulWidget {
  const WorkHistory({super.key});

  @override
  State<WorkHistory> createState() => _WorkHistoryState();
}

GlobalKey<FormState> formKey = GlobalKey();

class _WorkHistoryState extends State<WorkHistory> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtBirthDate = TextEditingController();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 1,
          shadowColor: Colors.black,
          title: Text(
            'Work History',
            style: TextStyle(
              color: color1,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Tell us about your work experience.',
                    style: TextStyle(
                      height: 1.2,
                      color: color1,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Start with your most recent job and work backward',
                    style: TextStyle(
                      height: 1.5,
                      color: color1,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  workHistoryInput(hintText: 'Job Title'),
                  const SizedBox(
                    height: 20,
                  ),
                  workHistoryInput(hintText: 'Employee'),
                  const SizedBox(
                    height: 20,
                  ),
                  workHistoryInput(hintText: 'City'),
                  const SizedBox(
                    height: 20,
                  ),
                  workHistoryInput(hintText: 'Country'),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: txtBirthDate,
                    cursorColor: Colors.teal,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() async {
                            datePicker = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1980),
                              lastDate: DateTime(2025),
                            );
                            if (datePicker != null) {
                              String birthDate =
                              '${datePicker!.day}/${datePicker!.month}/${datePicker!.year}';
                              txtBirthDate.text = birthDate;
                            }
                          });
                        },
                        child: const Icon(Icons.calendar_month_outlined),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.teal,
                        ),
                      ),
                      hintText: 'dd/mm/yy',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/Education');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField workHistoryInput({required String hintText}) {
    return TextFormField(
      cursorColor: Colors.teal,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.teal,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
        ),
      ),
    );
  }
}