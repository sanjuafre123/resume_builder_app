import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/setting');
                },
                icon: Text(
                  'Setting',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            ),
          ],
          centerTitle: true,
          title: Text(
            'DASHBOARD',
            style: TextStyle(
                color: Color(0xff486a93),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'All the resumes you create',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff144177),
                ),
              ),
              Text(
                'Will be saved here.',
                style: TextStyle(
                  height: 1.2,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff144177),
                ),
              ),
              SizedBox(
                height: 85,
              ),
              Column(
                children: [
                  Container(
                    height: 190,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff888481),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit_document,
                          size: 60,
                          color: Color(0xffff5722),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Create a New Documennt',
                          style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Color(0xff6984a4)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff016a70),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Create New Resume',
                    style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
