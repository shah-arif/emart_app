import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/lists.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
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
                  "Join the $appname"
                      .text
                      .fontFamily(bold)
                      .white
                      .size(18)
                      .make(),
                  15.heightBox,
                  Column(
                    children: [
                      customTextField(title: name, hint: nameHint),
                      customTextField(title: email, hint: emailHint),
                      customTextField(title: password, hint: passwordHint),
                      customTextField(
                          title: retypePassword, hint: passwordHint),
                      Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                              onPressed: () {},
                              child: forgotPassword.text.make())),
                      Row(
                        children: [
                          Checkbox(
                              checkColor: redColor,
                              value: isCheck,
                              onChanged: (newValue) {
                                setState(() {
                                  isCheck = newValue;
                                });
                              }),
                          10.widthBox,
                          Expanded(
                            child: RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                  text: "i agree to the ",
                                  style: TextStyle(
                                      fontFamily: regular, color: redColor)),
                              TextSpan(
                                  text: termsCond,
                                  style: TextStyle(
                                      fontFamily: regular, color: redColor)),
                                  TextSpan(
                                      text: " & ",
                                      style: TextStyle(
                                          fontFamily: regular, color: fontGrey)),
                                  TextSpan(
                                      text: privacyPolicy,
                                      style: TextStyle(
                                          fontFamily: regular, color: redColor))
                            ])),
                          )
                        ],
                      ),
                      5.heightBox,
                      OurButton(
                          title: signup,
                          color: isCheck == true? redColor :  lightGrey,
                          textColor: whiteColor,
                          onPress: () {})
                          .box
                          .width(context.screenWidth - 50)
                          .make(),
                      5.heightBox,
                    ],
                  )
                      .box
                      .white
                      .rounded
                      .padding(EdgeInsets.all(16))
                      .width(context.screenWidth - 70)
                      .shadowSm
                      .make(),
                  10.heightBox,
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(text: alreadyHaveAccount,style: TextStyle(
                          fontFamily: bold, color: fontGrey)),
                      TextSpan(text: login,style: TextStyle(
                          fontFamily: bold, color: redColor)),

                    ]
                  )).onTap(() {
                    Get.back();
                  })
                ],
              ),
            )));
  }
}
