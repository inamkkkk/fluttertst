import 'package:flutter/material.dart';

import '../constants/constants.dart';

class uperPortion extends StatelessWidget {
  const uperPortion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('Powerd by ',style: TextStyle(fontSize: 13,color: Colors.blue),),
        Text('Netcore Soft',style: TextStyle(fontSize: 13,color: Colors.blue,fontWeight: FontWeight.bold),),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.sd_card_alert_outlined,color: Colors.red,size: 13,),
        Icon(Icons.downloading_sharp,color: Colors.black,size: 13,),
        Icon(Icons.wifi,color: wificlr,size: 13,),


      ],
    );
  }
}
