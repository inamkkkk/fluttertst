import 'package:flutter/material.dart';

import '../controller/language_controller.dart';

class title extends StatefulWidget {

  @override
  State<title> createState() => _titleState();
}

class _titleState extends State<title> {
  var lang = languageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    lang.loadJson();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Got feedback?',style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w900),),
        SizedBox(height: 10,),
        Text('take one minute survay',style:TextStyle(fontSize: 18,color: Colors.black,),),
        SizedBox(height: 4,),
        Text('Click to start',style:TextStyle(fontSize: 18,color: Colors.black,),),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 40,
                  width: 100,
                  margin: const EdgeInsets.only(right: 6,left: 6),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue)
                    ,
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child:  Center(child: Text('${lang.pak}',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900),)),
                ),
                Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Pakistan.png/1024px-Flag_of_Pakistan.png',height: 20,width: 20,),
              ],
            ),SizedBox(width:5,),
            Column(
              children: [
                Container(
                  height: 40,
                  width: 100,
                  margin: const EdgeInsets.only(right: 6,left: 6),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),

                  ),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('${lang.british}',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900),)),
                ),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMb1_Kz0NvW1JhxYAqpxjbBvQrXgkKyniU7CIsJ0eFap3nz3HP8OsEZLOKWxFpvcEDOx0&usqp=CAU',height: 20,width: 20,),



              ],
            ),
            SizedBox(width: 5,),
            Column(
              children: [
                Container(
                  height: 40,
                  width: 100,
                  margin: const EdgeInsets.only(right: 6,left: 6),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0) //                 <--- border radius here
                    ),
                  ),
                  child: Center(child: Text('${lang.arab}',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900),)),
                ),
                Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/800px-Flag_of_Saudi_Arabia.svg.png',height: 20,width: 20,),
              ],
            ),


          ],
        ),
      ],
    );
  }
}


