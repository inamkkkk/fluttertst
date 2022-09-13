import 'package:flutter/material.dart';

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: 50,
            width: 100,
            margin: const EdgeInsets.only(right: 15,left: 15),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0) //                 <--- border radius here
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset('assets/g.png',height: 10,width: 10,),
            )
        ),
        Text('google search engine',),
      ],
    );
  }
}
