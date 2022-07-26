import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){  Navigator.pop(context);  },
          child: Icon(Icons.home),
          backgroundColor: Colors.purple[400],
        ),
          
        body:   Container(
          width:double.infinity ,
          color: Colors.purple[100],
          child: 
        Stack(children: [
         Container(
           width: double.infinity,
           child: Column(
             
             children:[
               SizedBox(height: 27,),
               Text("Login" ,style: TextStyle(fontFamily: "myfont",fontWeight: FontWeight.bold,color: Colors.black),
               ),
                                                           SizedBox(height: 27,),

                                             SvgPicture.asset("assets/icons/login.svg",width: 250,),
              

                             SizedBox(height: 27,),

              Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.purple[800],
                        ),
                        hintText: "Your Email :",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        suffix: Icon(
                          Icons.visibility,
                          color: Colors.purple[900],
                        ),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.purple[800],
                          size: 19,
                        ),
                        hintText: "Password :",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
               
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "login",
                    style: TextStyle(fontSize: 24),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                ),
             SizedBox(
               height: 15,
             ),
             Text("don't have an account ? singup" ,style: TextStyle(color: Colors.grey[600]),)
             ]
           ),
         ),
           Positioned(
              left: 0,
              child:
            
            Image.asset("assets/img/main_top.png",width: 111,)
             ),
            Positioned(
              bottom: 0,
              right: 0,
              child:
            
            Image.asset("assets/img/login_bottom.png",width: 150,)
             ),
        ],)
       ),
        
    );
  }
}