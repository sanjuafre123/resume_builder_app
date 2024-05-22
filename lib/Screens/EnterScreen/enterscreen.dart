
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/Color/Color_List.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({super.key});

  @override
  State<EnterScreen> createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'my',
                    style: TextStyle(
                      color: color1,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'perfect',
                    style: TextStyle(
                      color: color2,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'CV',
                    style: TextStyle(
                      color: color1,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/Login');
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 185,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/img.jpg'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Just three',
                style: TextStyle(
                  color: color1,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Simple steps',
                style: TextStyle(
                  height: 0.9,
                  color: color1,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              buildRow(
                  num: '1',
                  text:
                      '  Select a CV from our library of\n  professional designs'),
              const SizedBox(
                height: 15,
              ),
              buildRow(
                  num: '2',
                  text:
                      '  Build your CV with our with\n  industry-specific bullet point'),
              const SizedBox(
                height: 15,
              ),
              buildRow(
                  num: '3',
                  text:
                      '  Download your CV,print it out \n  and get it ready to send!'),
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Text(
                    'By clicking create my CV you agree to our ',
                    style: TextStyle(color: color1),
                  ),
                  const Text(
                    'Terms of',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                    ),
                  ),
                ],
              ),
              const Text(
                'use and privacy policy',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/template');
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(27),
                  ),
                  child: const Center(
                    child: Text(
                      'Create My CV',
                      style: TextStyle(color: Colors.white,fontSize: 22),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildRow({required String num, required String text}) {
    return Row(
      children: [
        CircleAvatar(
          radius: 17,
          backgroundColor: Colors.yellow.shade700,
          child: Text(
            num,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: color1,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
