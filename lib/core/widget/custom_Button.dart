import 'package:flutter/material.dart';

  Padding customButton(
  {
    required BuildContext context,
    required Widget direction,
    required String name,
    bool isBorder = false,
    bool islogo = false,
    String logoPath= '',
    Color buttonColor=const Color(0xFF0053DA),
    Color textColor=const Color(0XFFFFFFFF),})
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () async {
          Future.delayed(Duration(seconds: 3),);
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => direction,
                allowSnapshotting: true
            ),
          );
        },

        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(10),
            border: isBorder == true ? Border.all(color: Color(0xff777777),width: 1,) : Border.all(color: Colors.transparent),
          ),
          child: Stack(
            children: [
              Center(
                child: Text(name, style: TextStyle(
                    fontSize: 16, color: textColor),
                ),
              ),
              islogo == true? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height:double.infinity,width: 40,),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image(image: AssetImage(logoPath),),
                  )
                ],
              ): SizedBox() ,
            ],
          ),
        )
      ),
    );
  }
