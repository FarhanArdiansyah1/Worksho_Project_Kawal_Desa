import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_workshop_kawal_desa/constants/const.dart';
import 'package:project_workshop_kawal_desa/ui/shared/shared_style.dart';
import 'package:project_workshop_kawal_desa/ui/shared/ui_helper.dart';
import 'package:project_workshop_kawal_desa/ui/widget/button_widget.dart';
import 'package:project_workshop_kawal_desa/ui/widget/text_field_widget.dart';
import 'package:project_workshop_kawal_desa/viewmodels/login_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:loading_overlay/loading_overlay.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  size = MediaQuery.of(context).size;
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, model, child) => Scaffold(
          body: LoadingOverlay(
            isLoading: model.busy,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  child: Center(
                    child: Column(
                        children: <Widget>[
                        verticalSpaceMedium,
                        Text("Workshop Kawal Desa", style: titleTextStyle,),
                        verticalSpaceSmall,
                        Image.asset('assets/letter.jpg',
                          width: size.width*0.3,
                          height: size.height*0.3,
                        ),
                        verticalSpaceMedium,
                        TextFieldWidget(
                          hintText: 'E-Mail',
                          icon: Icons.email,
                          keyboardType: TextInputType.emailAddress,
                          isPassword: false,
                          textFieldController: model.emailController,
                          colorIcon: color_main,
                        ),
                        verticalSpaceSmall,
                        TextFieldWidget(
                            hintText: 'Password',
                            icon: Icons.lock,
                            keyboardType: TextInputType.emailAddress,
                            isPassword: true,
                            textFieldController: model.passwordController,
                            colorIcon: color_main
                        ),
                        verticalSpaceLarge,
                        ButtonWidget(
                            title: 'Login',
                            onPressedFuntion: (){
                            model.logginAccount(context);
                            },
                        bgColor: color_main
                    ),
                    verticalSpaceSmall,
                    InkWell(
                        onTap: (){},
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: color_main,
                          ),
                        )
                    ),
                    verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?'),
                        InkWell(
                          onTap: (){
                            model.navigateToSignUpView();
                          },
                          child: Text('Sign up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                  color: color_main
                              )
                          ),
                        )
                      ],
                    )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    ),
    );
  }
}