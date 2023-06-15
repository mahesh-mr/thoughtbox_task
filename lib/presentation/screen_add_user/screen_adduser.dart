import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thoughtbox/application/user_bloc/userdata_bloc_bloc.dart';
import 'package:thoughtbox/domain/model_user/model_user.dart';
import 'package:thoughtbox/presentation/core/colors.dart';
import 'package:thoughtbox/presentation/core/fonts.dart';
import 'package:thoughtbox/presentation/screen_add_user/widgets/custom_forms.dart';
import 'package:thoughtbox/presentation/screen_login/widgets/cusrom_button.dart';

class AddMembers extends StatelessWidget {
  AddMembers({super.key});

  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final GlobalKey<FormState> fonmkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // UserDataController controller = Get.put(UserDataController());

    final size = MediaQuery.of(context).size;
    final height = size.height;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Text(
          "Add Details",
          style: buttonTextBlack,
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<UserdataBlocBloc, UserdataBlocState>(
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                  height: height * .45,
                  width: double.infinity,
                  child: Card(
                    color: wamwhite,
                    child: Form(
                      key: fonmkey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            firstnameForm(),
                            lastnameFprm(),
                            emailForm(),
                            CustomButton(
                              onPressed: () {
                                bool isValid = fonmkey.currentState!.validate();
                                if (isValid) {
                                  final user = UserModel(
                                      email: email.text,
                                      firstName: firstName.text,
                                      lastName: lastName.text);

                                  context
                                      .read<UserdataBlocBloc>()
                                      .add(UserAddEvent(user: user));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    duration: Duration(seconds: 1),
                                    content: Text("added successfully"),
                                  ));

                                  Navigator.pop(context);
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    duration: Duration(seconds: 1),
                                    content:
                                        Text("name and amount can't be empty."),
                                  ));
                                }
                              },
                              title: "submit",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  CustomTextForm firstnameForm() {
    return CustomTextForm(
      controller: firstName,
      icons: Icons.person,
      maxline: 1,
      textinputType: TextInputType.name,
      title: "First Name",
      validator: (value) {
        if (value!.length == 0) {
          return "Enter your firstname";
        } else if (!RegExp(r'(^[a-z A-Z]+$)').hasMatch(value)) {
          return 'Please enter a valid name';
        } else {
          return null;
        }
      },
    );
  }

  CustomTextForm lastnameFprm() {
    return CustomTextForm(
      controller: lastName,
      icons: Icons.person,
      maxline: 1,
      textinputType: TextInputType.name,
      title: "SecondName",
      validator: (value) {
        if (value!.length == 0) {
          return "Enter your secondname";
        } else if (!RegExp(r'(^[a-z A-Z]+$)').hasMatch(value)) {
          return 'Please enter a valid name';
        } else {
          return null;
        }
      },
    );
  }

  CustomTextForm emailForm() {
    return CustomTextForm(
      controller: email,
      icons: Icons.email,
      maxline: 1,
      textinputType: TextInputType.emailAddress,
      title: "Email",
      validator: (value) {
        if (value == null) {
          return "Required Field";
        } else if (!RegExp(
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(value)) {
          return "Enter a valid email";
        } else {
          return null;
        }
      },
    );
  }
}
