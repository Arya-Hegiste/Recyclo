import 'package:flutter/material.dart';
import 'package:myapp/pages/upload_item.dart';
import 'package:myapp/services/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Hello, ",
                      style: AppWidget.headlinetextstyle(26.0),
                    ),
                  ),
                  Text("Arya", style: AppWidget.greentextstyle(25.0)),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "images/boy.jpg",
                        height: 50.0,
                        width: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Image.asset("images/home.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Categories",
                  style: AppWidget.headlinetextstyle(26.0),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UploadItem(category: "Plastic", id: id)));
                      },
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color(0xFFececf8),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.black45,
                                width: 2.0,
                              ),
                            ),
                            child: Image.asset(
                              "images/plastic.png",
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text("Plastic", style: AppWidget.normaltextstyle(20.0)),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFececf8),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black45,
                              width: 2.0,
                            ),
                          ),
                          child: Image.asset(
                            "images/paper.png",
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Paper", style: AppWidget.normaltextstyle(20.0)),
                      ],
                    ),
                    SizedBox(width: 20.0),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFececf8),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black45,
                              width: 2.0,
                            ),
                          ),
                          child: Image.asset(
                            "images/battery.png",
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Battery", style: AppWidget.normaltextstyle(20.0)),
                      ],
                    ),
                    SizedBox(width: 20.0),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFececf8),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black45,
                              width: 2.0,
                            ),
                          ),
                          child: Image.asset(
                            "images/glass.png",
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Glass", style: AppWidget.normaltextstyle(20.0)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Pending Request",
                  style: AppWidget.headlinetextstyle(22.0),
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black45, width: 2.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.green,
                          size: 30.0,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          "Main market, Mumbai",
                          style: AppWidget.normaltextstyle(20.0),
                        ),
                      ],
                    ),
                    Divider(),
                    Image.asset(
                      "images/chips.png",
                      height: 130,
                      width: 130,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.layers, color: Colors.green, size: 30),
                        SizedBox(width: 10.0),
                        Text("3", style: AppWidget.normaltextstyle(24.0)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}
