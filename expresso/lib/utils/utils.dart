import 'package:flutter/material.dart';

class Utils{

  static void fieldFocusNode(BuildContext context,
    FocusNode current,
    FocusNode next,){
      current.unfocus();
      FocusScope.of(context).requestFocus(next);
    

  }

  static snackBar(String message,BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        // margin: EdgeInsets.all(),
        behavior: SnackBarBehavior.floating,
        // width: 100,
        
        elevation: 30,
        duration: const Duration(seconds: 1),
        
        backgroundColor: Colors.red,
        // showCloseIcon: ,
      
        
        content:  Row(children:[const Icon(Icons.error,color: Colors.white,),const SizedBox(width: 6,), Expanded(child: Text(message,style: const TextStyle(color: Colors.white),))]),)
    );
  }

}