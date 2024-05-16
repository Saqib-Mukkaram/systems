import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:systems/CustomWidgets/CustomButton.dart';
import 'package:systems/CustomWidgets/InputField.dart';
import 'package:systems/CustomWidgets/LabelText.dart';
import 'package:systems/WebSystem/Dashboard/Dashboard.dart';
import 'Resources/Constants.dart';
import 'ViewModels/WebHomeScreenViewModel.dart';

class WebHomeScreen extends StatelessWidget {
  WebHomeScreen({Key? key}) : super(key: key);
  final _viewModel = Get.find<WebHomeScreenViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (con, constraints) {
          return Container(
            constraints: constraints,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Constants.LoginBackground),
                fit: BoxFit.cover,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'branding'.tr,
                        style: TextStyle(
                          fontSize: 42,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        constraints:
                            BoxConstraints(maxWidth: 300, minHeight: 200),
                        child: Text(
                          'branding_title'.tr,
                          softWrap: true,
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 50,
                    bottom: 50,
                  ),
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width / 2,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff000000),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16, bottom: 16),
                          child: Text('Login',
                              style: TextStyle(
                                fontSize: 64,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        LabelText(
                          fontSize: 14,
                          labelText: 'email_placeholder'.tr,
                          TextColor: Colors.white,
                        ),
                        InputField(
                          width: 400,
                          height: 40,
                          placeholderText: '',
                          fieldController: _viewModel.emailController.value,
                          isBorder: false,
                        ),
                        LabelText(
                          fontSize: 14,
                          paddingtop: 10,
                          labelText: 'password_placeholder'.tr,
                          TextColor: Colors.white,
                        ),
                        InputField(
                          height: 40,
                          width: 400,
                          placeholderText: '',
                          fieldController: _viewModel.passwordController.value,
                          isBorder: false,
                          obscureText: true,
                        ),
                        CustomButton(
                            paddingRight: 0,
                            paddingTop: 10,
                            width: 410,
                            height: 40,
                            elevation: 0,
                            backgroundColor: Color(0xff4B50A3),
                            buttonText: "login_button".tr,
                            onPress: () {
                              Get.offNamed('/dashboard');
                            })
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class WebHomeScreenMobile extends StatelessWidget {
  const WebHomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (con, constraints) {
        // print('MAX WIDTH ${constraints.maxWidth}');
        // print('MAX HEIGHT ${constraints.maxHeight}');
        // print('MIN WIDTH ${constraints.minWidth}');
        // print('MIN HEIGHT ${constraints.minHeight}');
        return Container(
            constraints: constraints,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Constants.LoginBackground),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Web Home Screen', style: TextStyle(fontSize: 24)),
                  Text(
                    'This is the web home screen',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Login', style: TextStyle(fontSize: 24)),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 100,
                      maxWidth: 200,
                    ),
                    child: TextFormField(),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 100,
                      maxWidth: 200,
                    ),
                    child: TextFormField(),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ],
              ),
            ));
      }),
    );
  }
}
