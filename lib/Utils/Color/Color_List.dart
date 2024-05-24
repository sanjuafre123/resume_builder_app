import 'package:flutter/material.dart';

Color color1 = const Color(0xff012D6c);
Color color2 = const Color(0xffff3c3e);
Color color3 = const Color(0xffEbE2D3);

List SettingList = [
  'Account info',
  'Subscription',
  'Dowloads',
  'Notification',
  'Contact support',
  'FAQs',
  'Send feedback',
];

DateTime? datePicker;

TextEditingController txtFirstName = TextEditingController();
TextEditingController txtLastName = TextEditingController();
TextEditingController txtEmailAddress = TextEditingController();
TextEditingController txtCity = TextEditingController();
TextEditingController txtCountry = TextEditingController();
TextEditingController txtNationality = TextEditingController();
TextEditingController txtPostcode = TextEditingController();
TextEditingController txtDrivingLicence = TextEditingController();
TextEditingController txtWebsite = TextEditingController();

class EducationModel {

  // EducationModel({
  //
  // });
}

List<EducationModel> educationModel = [
  EducationModel(

  ),
];
String? first;
String? last;
String? Email;
String? city;
String? country;
String? Nationality;
String? postcode;
String? Driving;
String? Website;
String? job;
String? Employee;
String? dmy;
String? sname;
String? slocation;
String? degree;
String? study;
String? skills;
String? stDate;
String? eDate;
String? languageName;
