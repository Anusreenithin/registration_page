import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const RegistrationPage());
}

class  RegistrationPage  extends StatefulWidget{
  const RegistrationPage({Key? key}) : super(key: key);
}  @override
State<RegistrationPage> createState() => _RegistrationPage();


class _RegistrationPage extends State<RegistrationPage> {
  String? gender;


  bool agree=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(

            title:Text("registration"),
            centerTitle: true,
            leading:IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_back),

            )

            ),

          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: <Widget>[


                TextField(
                  decoration: InputDecoration(
                      hintText: "phone number",
                      label: Text("phone number"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero))
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      hintText: "address",
                      label: Text("address"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero))
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      hintText: "company name",
                      label: Text("company name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.zero))
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      hintText: "website name",
                      label: Text("website name"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "E_mail address",
                    label: Text("E_mail address"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "password",
                    label: Text("password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero),

                    ),
                  ),
                ),
  SizedBox(height: 20,),
    Align(
      alignment: Alignment.centerLeft,
        child: Text("Gender")),
    Row(
      children: [
        Expanded(
          child: RadioListTile(
          title: Text("Male"),
          value: "male",
          groupValue: gender,
          onChanged: (value){
          setState(() {
          gender = value.toString();
          });
          },
          ),
        ),
        Expanded(
          child: RadioListTile(
            title: Text("Female"),
            value: "female",
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value.toString();
              });
            },
          ),
        ),
      ],
    ),




    /*RadioListTile(
    title: Text("Other"),
    value: "other",
    groupValue: gender,
    onChanged: (value){
    setState(() {
    gender = value.toString();
    },
    );
    },
      ),*/




                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Checkbox(
                              value: agree, onChanged: (value){
                              setState(() {
                              agree=value!;
                            }
                            );
                          },
                      ),
                          Text("I agree with terms and conditions"),
            ],


                      ),


                      ElevatedButton(
                        onPressed: () {},
                        child:  Text('CREATE ACCOUNT'),


                      ),
               RichText(
                   text: TextSpan(
                     text: "Already have an account?  ",style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: "log in",style:TextStyle(color: Colors.blue )),
                        ]
                   ),
    ),
    ]
    ),
    ),
          ),
    ),

    );


  }
}