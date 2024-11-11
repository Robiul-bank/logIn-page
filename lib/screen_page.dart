import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/image1.jpg",width: MediaQuery.of(context).size.width * 0.3,),
          ),
          Padding(
            padding: const EdgeInsets.only(left:150),
            child: Text("Welcome Back",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:100),
            child: Text("Log in to your creator account of facebook",style: TextStyle(fontSize: 15,),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 20, 5, 7),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Icon(Icons.person_3_outlined),
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 10, 5, 7),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Icon(Icons.lock_open),
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 345),
            child: Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 150,right: 150),
            child: ElevatedButton(
              onPressed: () {
                // Button action here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: Size(10, 40), // Set minimum width and height
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adjust padding if needed
                // You can also use fixedSize if you want a strict size
                // fixedSize: Size(200, 60),
              ),
              child: Text('LOG IN'),
            ),
          ),
          SizedBox(height: 40),
          Center(child: Text("Or connect anather account")),
          SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                    ),
                    child:Row(
                      children: [
                        Icon(Icons.facebook),
                        Text("Facebook"),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                    ),
                    child:Row(
                      children: [
                        FaIcon(FontAwesomeIcons.google),
                        Text("Google"),
                      ],
                    )),
              )
            ],
          )


        ],
      ),
    );
  }
}
