import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({Key? key,this.icono,this.type,this.pass,this.texto});


  final IconData? icono;
  final TextInputType? type;
  final bool? pass;
  final String? texto;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      decoration: InputDecoration(
        hintText: texto,
        filled: true,
        fillColor: Color(0xffEBDCFA),
        prefixIcon: Icon(icono,color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 129, 37, 222)),
          borderRadius: BorderRadius.circular(50)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius:BorderRadius.circular(50),
          borderSide: BorderSide(color: Color(0xffEBDCFA))
           )
      ),
    );
  }
}