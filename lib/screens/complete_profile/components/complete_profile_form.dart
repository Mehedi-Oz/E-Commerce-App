import 'package:flutter/material.dart';

import '../../../components/custom_sufix_icon.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String address;

  get errors => null;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildFirstNameFieldForm(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildLastNameFieldForm(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPhoneNumberFromField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildAddressFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  //go to OTP Screen
                }
              })
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(KAddressNullError)) {
          setState(() {
            errors.remove(KAddressNullError);
          });
        }
        return null;
      },
      validator: ((value) {
        if (value!.isEmpty && errors.contains(KAddressNullError)) {
          setState(() {
            errors.add(KAddressNullError);
          });
          // return "";
        }
        return null;
      }),
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFromField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(KPhoneNumberNullError)) {
          setState(() {
            errors.remove(KPhoneNumberNullError);
          });
        }
        return null;
      },
      validator: ((value) {
        if (value!.isEmpty && errors.contains(KPhoneNumberNullError)) {
          setState(() {
            errors.add(KPhoneNumberNullError);
          });
          return "";
        }
        return null;
      }),
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your Phone Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

  TextFormField buildLastNameFieldForm() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue!,
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your Last Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField buildFirstNameFieldForm() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(KNamelNullError);
          });
        }
        return null;
      },
      validator: ((value) {
        if (value!.isEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(KNamelNullError);
          });
          // return "";
        }
        return null;
      }),
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your First Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }
}
