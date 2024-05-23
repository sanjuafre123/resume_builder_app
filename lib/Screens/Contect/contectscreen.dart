import 'dart:io';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/Utils/Color/Color_List.dart';
import 'package:image_picker/image_picker.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    ImagePicker imagePicker = ImagePicker();
    File? fileImage;

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffff7f1),
        centerTitle: true,
        title: Text(
          'CONTACT INFORMATION',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                'What the best wat for employers to contact you?',
                style: TextStyle(
                    color: Color(0xff012D6c),
                    fontSize: 26,
                    height: 1.4,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'We suggest including email and phone number.',
                style: TextStyle(
                    color: Color(0xff012D6c),
                    fontSize: 19,
                    height: 1.4,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: height * 0.16,
                    width: width * 0.31,
                    decoration: BoxDecoration(
                      image: (fileImage != null)
                          ? DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(fileImage),
                            )
                          : null,
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '   '
                            'Add a photo to your CV',
                            style: TextStyle(color: color1, fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '  Supported files format\n  are .JPEG, .PNG, and .HEIC.Size\n  limit is set at 4MB',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: IconButton(
                            onPressed: () async {
                              XFile? xFileImage = await imagePicker.pickImage(
                                  source: ImageSource.gallery);
                              setState(() {
                                fileImage = File(xFileImage!.path);
                              });
                            },
                            icon: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.blueAccent,
                                ),
                                Text(
                                  'Upload Photo',
                                  style: TextStyle(color: Colors.blueAccent),
                                )
                              ],
                            )),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              buildTextFormField(
                label: 'FIRST NAME',
                controller: txtFirstName,
              ),
              buildTextFormField(
                label: 'LAST NAME',
                controller: txtLastName,
              ),
              buildTextFormField(
                label: 'Email Address',
                controller: txtEmailAddress,
              ),
              buildTextFormField(
                label: 'City',
                controller: txtCity,
              ),
              buildTextFormField(
                label: 'Country',
                controller: txtCountry,
              ),
              buildTextFormField(
                label: 'Nationality',
                controller: txtNationality,
              ),
              buildTextFormField(
                label: 'Postcode',
                controller: txtPostcode,
              ),
              buildTextFormField(
                label: 'Driving Licence',
                controller: txtDrivingLicence,
              ),
              buildTextFormField(
                label: 'Website',
                controller: txtWebsite,
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/skills');
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

  TextFormField buildTextFormField(
      {required String label, required TextEditingController? controller}) {
    return TextFormField(
      controller: controller,
      textInputAction: TextInputAction.done,
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(
            color: Color(0xff012D6c),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
