import 'package:flutter/material.dart';
import 'package:hackthecause/utils/Routes.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List arr = ["Guidelines", "Funds Recieved", "Edit Details"];
  List images = ["guidelines.png", "funds.png", "details.png"];
  List routes = ["/guidelines", "/funds", "/funds"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15),
              Center(
                child: Text(
                  "Profile",
                  style: TextStyle(
                      color: Color(0xff4C46D3),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
                ),
              ),
              SizedBox(height: 20),
              CircleAvatar(
                child: Icon(
                  Icons.person_outline,
                  size: 80,
                ),
                radius: 60,
                backgroundColor: Color(0xff4C46D3),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "AYUSH",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                  child: SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        child: ListTile(
                          leading: Image.asset("images/" + images[index]),
                          title: Text(
                            arr[index],
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 20),
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              Routes.sailor(routes[index]);
                            },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
