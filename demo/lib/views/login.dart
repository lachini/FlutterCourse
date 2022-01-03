import 'package:demo/widgets/form_items.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:demo/mixins/validation_mixin.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String token = "";
  bool isInvalid = false;

  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    double contentGap = height < 750 ? 50 : 80;
    double buttonGap = height < 750 ? 5 : 15;
    double imageSize = height < 750 ? height / 4 : width / 2;

    if (height < 569) {
      contentGap = 30;
      buttonGap = 5;
      imageSize = height / 5;
    }

    var logoImageAsset = new AssetImage("assets/images/login.jpg");
    var logoImage = new Image(
      image: logoImageAsset,
      height: imageSize,
      width: imageSize,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(children: <Widget>[
        Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                      left: width / 4, right: width / 4, top: contentGap),
                  child: logoImage,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 35, right: 35, top: contentGap),
                  child: Form(
                      key: formKey,
                      child: Column(children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: formLabel('Email'.tr(), context),
                        ),
                        Container(
                            height: height / 18,
                            padding: EdgeInsets.only(top: 5),
                            child: TextFormField(
                                validator: (value) =>
                                    EmailValidator.validate(value!)
                                        ? null
                                        : "Please enter a valid email")),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          alignment: Alignment.centerLeft,
                          child: formLabel('Password', context),
                        ),
                        Container(
                            //     child: const TextField(
                            //   obscureText: true,
                            //   decoration: InputDecoration(
                            //     border: OutlineInputBorder(),
                            //     labelText: 'Enter Password',
                            //   ),
                            // )
                            height: height / 18,
                            padding: EdgeInsets.only(top: 5),
                            child:
                                passwordField(validatePassword, (String value) {
                              password = value;
                            }, context, _obscureText)),
                        Container(
                          padding: EdgeInsets.only(top: 50),
                          child: submitButton('buttonTitles.login'.tr(), () {
                            formKey.currentState!.save();
                          }, width - 70, height / 20, context),
                        ),
                      ])),
                ),
              ]),
        ),
      ]),
    );
  }
}
