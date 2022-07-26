
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          
          color: Colors.purple[50],
          width: double.infinity,
          height: double.infinity,
          child: Stack(children: [
            Container(
              width: double.infinity,
              color: Colors.purple[100],
              child: Column(
                children: [
                  SizedBox(height: 35,),
                              Text(
                                "Welcome to saida" ,textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontFamily:"myfont")),
                                                SizedBox(height: 35,),

                              SvgPicture.asset("assets/icons/chat.svg"),
                                                SizedBox(height: 35,),

                              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: Text(
                    "login",
                    style: TextStyle(fontSize: 24),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  child: Text(
                    "SIGNUP",
                    style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purple[100]),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                ),
              ],
          ),
            ),
        
              
            
            Positioned(
              left: 0,
              child:
            
            Image.asset("assets/img/main_top.png",width: 111,)
             ),
            Positioned(
              bottom: 0,
              child:Image.asset("assets/img/main_bottom.png",width: 100,)
     )
          ]),
        ),
      ),
    );
  }
}
