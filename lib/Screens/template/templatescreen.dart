import 'package:flutter/material.dart';
import 'package:resume_builder_app/Utils/Color/Color_List.dart';

class TemplateScreen extends StatefulWidget {
  const TemplateScreen({super.key});

  @override
  State<TemplateScreen> createState() => _TemplateScreenState();
}

class _TemplateScreenState extends State<TemplateScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'CHOOSE TEMPLATE',
            style: TextStyle(
              color: color1,
              fontSize: 20,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Browse and select the\ntemplate for your CV',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: color1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      imagesList.length,
                      (index) =>
                    Container(
                        height: 250,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(imagesList[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 108,
              ),
              // Container(
              //   height: height * 0.148,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: Colors.yellow.shade100,
              //   ),
              // ),
              Container(
                height: height * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    colors(Color: Colors.black),
                    colors(Color: Colors.amber),
                    colors(Color: Colors.red),
                    colors(Color: Colors.blue),
                    colors(Color: Colors.teal),
                    colors(Color: Colors.purple),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/cvoption');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: height * 0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Select this template',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      letterSpacing: 0.9,
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

  Container colors({required Color}) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Color,
        shape: BoxShape.circle,
      ),
    );
  }
}

List imagesList = [
  'assets/img1.png',
  'assets/img2.png',
  'assets/img3.jpg',
];
