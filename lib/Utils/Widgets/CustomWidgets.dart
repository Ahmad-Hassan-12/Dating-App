import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/Colors.dart';

Widget backbutton(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);
    },
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorValues.white.withOpacity(0.25), // Circle color
          ),
          child: Center(
            child: Icon(
              CupertinoIcons.arrow_left,
              color: Colors.white, // Icon color
              size: 22.0, // Icon size
            ),
          ),
        ),
      ),
    ),
  );
}

Widget Custom_TextField(Widget icon, String hintext, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorValues.lightpink,
        // boxShadow: [
        //   BoxShadow(
        //       color: ColorValues.LightGray,
        //       blurRadius: 2,
        //       offset: Offset(1, 2)
        //   ),
        // ],
      ),
      child: TextFormField(
        // controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5),
          prefixIcon: icon,
          hintText: hintext,
          hintStyle: TextStyle(
            color: ColorValues.grey,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    ),
  );
}

Widget roundedBorder_button(String icon, VoidCallback callback) {
  return InkWell(
    onTap: callback,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorValues.white, // Circle color
          ),
          child: Center(
            child: SvgPicture.asset(
              icon,
              color: ColorValues.pinkmain, // Icon color
            ),
          ),
        ),
      ),
    ),
  );
}

Widget CircularImage(String pic, double height, double width) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(pic), fit: BoxFit.cover)

        // boxShadow: [
        //
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 1,
        //
        //
        //   )
        // ]
        ),
  );
}

Widget CircularButton(String svg, Color color, VoidCallback voidCallback) {
  return InkWell(
    onTap: voidCallback,
    child: Container(
      width: 45,
      height: 45,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: color, boxShadow: [
        BoxShadow(
          color: CupertinoColors.systemBlue.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 0.3,
          offset: Offset(-2, 6), // Corrected line
        )
      ]),
      child: Center(
        child: SvgPicture.asset(
          svg,
        ),
      ),
    ),
  );
}

Widget backbutton2(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);
    },
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorValues.white, // Circle color
          ),
          child: Center(
            child: Icon(
              CupertinoIcons.arrow_left,
              color: ColorValues.pinkmain, // Icon color
              size: 22.0, // Icon size
            ),
          ),
        ),
      ),
    ),
  );
}

Widget tiltimage(String img, int angle, BuildContext context) {
  return Transform(
    transform: Matrix4.rotationZ(angle * 0.0174533),
    // Convert degrees to radians
    alignment:
        angle == 10 ? FractionalOffset.bottomLeft : FractionalOffset.bottomLeft,
    child: Container(
      height: MediaQuery.of(context).size.height * 0.37,
      width: MediaQuery.of(context).size.width * 0.55,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.32,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: angle == 10 ? Alignment.topLeft : Alignment.bottomLeft,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomRight,
                  colors: [
                    Color(0xffE8B5B5),
                    Color(0xffAC5829)
                  ], // Add your desired colors
                ),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/fillheart.svg', // Add your SVG asset here
                  height: 18,
                  width: 19,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget ActiveFriends_Widget(String photo,String name,BuildContext context) {
  return
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(children: [
        Container(
          height: 70,
          width: 70,
          child: Stack(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: ColorValues.pinkmain),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(photo),
                        fit: BoxFit.cover)),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorValues.pinkmain),
                    color: ColorValues.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: TextStyle(
              color: ColorValues.grey,
              fontSize: 15,
              fontWeight: FontWeight.w700),
        )
      ]),
    );





}


