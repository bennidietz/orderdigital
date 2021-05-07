import 'package:flutter/material.dart';
import 'package:forsat/network/models/sign_up_form_model.dart';
import 'package:forsat/res/colors.dart';
import 'package:forsat/res/images.dart';
import 'package:forsat/router/router_constants.dart';
import 'package:forsat/widgets/show_snackbar.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
        automaticallyImplyLeading: false,
      ),
      body: Injector(
        inject: [Inject<SignUpFormModel>(() => SignUpFormModel())],
        builder: (context) {
          final _singletonSignUpFormModel = RM.get<SignUpFormModel>();
          return Container(
            padding: EdgeInsets.all(16),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 100,
                  child: Center(
                    child: Image.asset(MyImages.logo_solid),
                  ),
                ),
                buildSizedBox(20),
                StateBuilder<SignUpFormModel>(
                  builder: (context, signUpFormModel) {
                    return TextFormField(
                      onChanged: (String firstName) {
                        signUpFormModel.setState(
                                (state) => state.setFirstName(firstName),
                            catchError: true
                        );
                      },
                      decoration: InputDecoration(
                        errorText: signUpFormModel.hasError
                            ? signUpFormModel.error.message
                            : null,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: Icon(Icons.person),
                        ),
                        hintText: "Enter your first name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    );
                  },
                ),
                buildSizedBox(15),
                StateBuilder<SignUpFormModel>(
                  builder: (context, signUpFormModel) {
                    return TextFormField(
                      onChanged: (String email) {
                        signUpFormModel.setState(
                                (state) => state.setEmail(email),
                            catchError: true
                        );
                      },
                      decoration: InputDecoration(
                        errorText: signUpFormModel.hasError
                            ? signUpFormModel.error.message
                            : null,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: Icon(Icons.email),
                        ),
                        hintText: "Enter your email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    );
                  },
                ),
                StateBuilder<SignUpFormModel>(
                  builder: (_, signFormModel) {
                    return TextFormField(
                      onChanged: (String password) {
                        signFormModel.setState((state) => state.setPassword(password),
                            catchError: true);
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        errorText: signFormModel.hasError
                            ? signFormModel.error.message
                            : null,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: Icon(Icons.lock),
                        ),
                        hintText: "Enter your password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    );
                  },
                ),
                buildSizedBox(25),
                StateBuilder(
                  observe: () => _singletonSignUpFormModel,
                  builder: (_, model) {
                    return MaterialButton(
                      onPressed: () {
                        if (!_singletonSignUpFormModel.state.validateData()) {
                          showSnackbar(key: _key, message: "Data is invalid");
                        } else {
                          // login
                        }
                      },
                      height: 55,
                      shape: StadiumBorder(),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                      ),
                    );
                  },
                ),
                buildSizedBox(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, signInRoute);
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: MyColors.primaryColor,),
                      )
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  SizedBox buildSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
