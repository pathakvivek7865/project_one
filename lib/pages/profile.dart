import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),),
      body: _buildBody(context),
    );
  }

  Widget _buildColumn(String title, String count) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Text(
          title,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }

  _buildBody(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          // Upto Edit Profile button
          //color: Colors.red,
          //decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
          height: 400.0,
          child: Stack(
            children: <Widget>[
              Container(
                child: Image(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  //color: Colors.black,
                  image: AssetImage("assets/images/slider2.jpg"),
                ),
              ),
              Positioned(
                //left: (MediaQuery.of(context).size.width / 2) - 50,
                width: MediaQuery.of(context).size.width,
                //height: 350,
                top: 150.0 - 50,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        //color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage('assets/images/slider1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                          width: 2.0,
                          color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8.0,
                              offset: Offset(0.0, 10.0))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Vivek Pathak",
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Balkumari, Kathmandu",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 2.0,
                      width: 80.0,
                      color: Colors.grey.withOpacity(0.6),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 80.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.0,
                                      color: Theme.of(context).accentColor),
                                  borderRadius: BorderRadius.circular(24.0)),
                              child: Text(
                                "EDIT PROFILE",
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(24.0)),
                              child: Icon(
                                Icons.settings,
                                color: Colors.white,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  bottom: BorderSide(
                    width: 1.0,
                    color: Colors.grey.withOpacity(0.3),
                  ))),
          padding:
              EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0, right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildColumn("Posts", "349"),
              Container(
                width: 1.0,
                height: 30.0,
                color: Colors.grey.withOpacity(0.3),
              ),
              _buildColumn("Folowers", "345"),
              Container(
                width: 1.0,
                height: 30.0,
                color: Colors.grey.withOpacity(0.3),
              ),
              _buildColumn("Folowing", "84"),
              Container(
                  width: 1.0,
                  height: 30.0,
                  color: Colors.grey.withOpacity(0.3)),
              _buildColumn("Worked", "28")
            ],
          ),
        ),
      ],
    );
  }
}
