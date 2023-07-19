import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/views/home_screen/home.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/lists.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
            body: Center(
      child: Column(
        children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          10.heightBox,
          "Login to $appname".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Column(
            children: [
              customTextField(title: email, hint: emailHint),
              customTextField(title: password, hint: passwordHint),
              Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {}, child: forgotPassword.text.make())),
              5.heightBox,
              OurButton(
                      title: login,
                      color: redColor,
                      textColor: whiteColor,
                      onPress: () {
                        Get.to(()=>Home());;
                      })
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              5.heightBox,
              createNewAccount.text.color(fontGrey).make(),
              5.heightBox,
              OurButton(
                      title: signup,
                      color: lightGolden,
                      textColor: Colors.black,
                      onPress: (){
                        Get.to(()=>SignupScreen());
                      })
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              loginWith.text.color(fontGrey).make(),
              5.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                            radius: 25,
                            backgroundColor: lightGrey,
                            child: Image.asset(socialIconList[index],width: 30,),
                          ),
                    )),
              )
            ],
          )
              .box
              .white
              .rounded
              .padding(EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .shadowSm
              .make(),
        ],
      ),
    )));
  }
}
