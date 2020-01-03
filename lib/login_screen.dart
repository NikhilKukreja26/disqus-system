import 'package:disqus_system/alert_dialogs/alert_dialog.dart';
import 'package:disqus_system/custom_images/custom_images.dart';
import 'package:disqus_system/validation_mixins/validation_mixins.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixins {
  bool _obscureText = false;
  bool autoCorrectCheck = false;
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  Widget emailAddressField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        autocorrect: true,
        onEditingComplete: () {},
        onFieldSubmitted: (term) {
          _fieldFocusChange(context, emailFocusNode, passwordFocusNode);
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          labelText: 'Email Address',
          labelStyle: TextStyle(fontSize: 16.0),
          suffixIcon: Icon(
            Icons.mail,
            color: Colors.grey,
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        focusNode: emailFocusNode,
        validator: validateEmail,
      ),
    );
  }

  Widget passwordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        enableInteractiveSelection: false,
        style: TextStyle(),
        autocorrect: true,
        onEditingComplete: () {},
        onFieldSubmitted: (term) {
          passwordFocusNode.unfocus();
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          labelText: 'Password',
          labelStyle: TextStyle(fontSize: 16.0),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: new Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
          ),
        ),
        obscureText: _obscureText,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        focusNode: passwordFocusNode,
        validator: validatePassword,
      ),
    );
  }

  loginUser() {
    if (loginFormKey.currentState.validate()) {
      loginFormKey.currentState.save();
      Navigator.pushNamed(context, '/comment_screen');
    } else {
      setState(() {
        CustomAlertDialogs.okDialog(
            context, 'Please fill the details', CustomImages.crossIcon);
        autoCorrectCheck = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () {
        CustomAlertDialogs.exitDialog(context);
        return null;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Disqus System',
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(new FocusNode());
              },
              child: Form(
                key: loginFormKey,
                autovalidate: autoCorrectCheck,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Image.asset(
                      'assets/images/ds-logo.png',
                      height: 250.0,
                      width: 250.0,
                    ),
                    emailAddressField(),
                    SizedBox(
                      height: 20,
                    ),
                    passwordField(),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: RaisedButton(
                        onPressed: loginUser,
                        padding: EdgeInsets.all(
                          (queryData.size.height / 70.0),
                        ),
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'roboto',
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

_fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
