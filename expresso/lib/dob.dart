import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DOB extends StatefulWidget {
  const DOB({super.key});

  @override
  State<DOB> createState() => _DOBState();
}

class _DOBState extends State<DOB> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    TextEditingController dateController = TextEditingController();
    DateTime? date;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left:screenWidth*0.242,bottom:screenHeight*0.34,right: screenWidth*0.126,top: 0.07*screenHeight),
                child: Row(
                  children: const [
                    Text("Create a ",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),),
                    Text("Expresso Account",style: TextStyle(color: Color.fromRGBO(54, 115, 226, 1),fontSize: 17,fontWeight: FontWeight.w700),)
                  ],
                ),
              ),
              
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.13,
                    left: screenWidth * 0.08,
                    bottom: screenHeight*0.04
                   ),
                child: const Text(
                  "Enter your birthday and gender",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(0, 0, 1, 1),
                      fontWeight: FontWeight.w700),
                ),
              ),
              
      
              Padding(
               padding:  EdgeInsets.only(
                 left: screenWidth * 0.08,
                   right: screenWidth * 0.08,
                   bottom: screenHeight * 0.029),
               child:  TextField(
                controller: dateController,
                
                // keyboardType: TextInputType.datetime,
                // inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'\d{4}-\d{2}-\d{2}'))],
                onTap: ()async{
                  date=(await showDatePicker(context: context, 
                  initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2300)));
                setState(() {
                  
                    dateController.text=DateFormat('yyyy-MM-dd').format(date!);

                  
                });


                },
                 decoration:const InputDecoration(
                  suffixIcon: Icon(Icons.calendar_month),
                  
                     border: OutlineInputBorder(
                         borderSide:
                             BorderSide(width: 3, color: Color.fromRGBO(255, 255, 255, 1))),
                     labelText: "DOB",
                     floatingLabelBehavior: FloatingLabelBehavior.always),
               ),
                    ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.08,
                    right: screenWidth * 0.08,
                    bottom: screenHeight * 0.029),
                child: const TextField(
                  decoration: InputDecoration(
                    
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Color.fromRGBO(255, 255, 255, 1))),
                      labelText: "Gender",
                      floatingLabelBehavior: FloatingLabelBehavior.always),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(
              //       left: screenWidth * 0.08,
              //       right: screenWidth * 0.08,
              //       bottom: screenHeight * 0.019),
              //   child: GestureDetector(
              //     onTap: () {
              //       Navigator.pushNamed(context, '/finallog');
              //     },
              //     child: Container(
              //       decoration: BoxDecoration(
              //           color: Color.fromRGBO(54, 115, 226, 1),
              //           borderRadius: BorderRadius.circular(5)),
              //       height: screenHeight * 0.05,
              //       width: screenWidth * 0.84,
              //       child: const Center(
              //           child: Text(
              //         "Next",
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 15,
              //             fontWeight: FontWeight.w700),
              //       )),
              //     ),
              //   ),
              // ),
              
            ],
          ),
        ),
      ),
    );
  }
}