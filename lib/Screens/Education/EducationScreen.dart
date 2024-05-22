import 'package:flutter/material.dart';
import 'package:resume_builder_app/Utils/Color/Color_List.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtSchool = TextEditingController();
    TextEditingController txtLocation = TextEditingController();
    TextEditingController txtDegree = TextEditingController();
    TextEditingController txtStudy = TextEditingController();
    TextEditingController txtGraduation = TextEditingController();

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Education',
          style: TextStyle(
            color: color1,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Tell us about your',
                    style: TextStyle(
                        color: color1, fontWeight: FontWeight.w500, fontSize: 26),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'education.',
                    style: TextStyle(
                        height: 1,
                        color: color1,
                        fontWeight: FontWeight.w500,
                        fontSize: 26),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Text(
                    'include every school,even if you`re still',
                    style: TextStyle(color: color1, fontSize: 17),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'there or didn`t graduate.',
                    style: TextStyle(color: color1, fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: txtSchool,
                decoration: const InputDecoration(
                  hintText: 'School name',
                  hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 14),
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Colors.grey,
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 2)),
                  focusColor: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: txtLocation,
                decoration: const InputDecoration(
                  hintText: 'School location',
                  hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 14),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 2)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: txtDegree,
                decoration: const InputDecoration(
                  hintText: 'Degree',
                  hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 14),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 2)),
                  focusColor: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: txtStudy,
                decoration: const InputDecoration(
                  hintText: 'Field of study',
                  hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 14),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 2)),
                  focusColor: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('GRADUATION END DATE',style: TextStyle(color: color1,fontSize: 11,fontWeight: FontWeight.w600),),
                ],
              ),
              TextFormField(
                controller: txtGraduation,
              ),
              const SizedBox(
                height: 120,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/Work');
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
    );
  }
}
