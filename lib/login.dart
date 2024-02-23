import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

    void showImagePicker(BuildContext context){
      showModalBottomSheet(context: context, builder: (builder){
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/4,
        );
      });
    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 180, 152, 232),
      body: Center(
        child: Stack(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/user.jpg'),
            ),
            Positioned(
              bottom: 5,
              left: 100,
              child: IconButton(
                onPressed:(){
                  
                }, 
                icon: Icon(Icons.add_a_photo_rounded))
              )
          ],
        ) 
      ),
    );
  }
}