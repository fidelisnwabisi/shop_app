import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/size_config.dart';

class FakeStoreAPIUsername extends StatefulWidget {
  const FakeStoreAPIUsername({Key? key});

  @override
  State<FakeStoreAPIUsername> createState() => _FakeStoreAPIUsernameState();
}

class _FakeStoreAPIUsernameState extends State<FakeStoreAPIUsername> {
  List<dynamic> data = [];
  int _value = 1;

  getData() async {
    final response = await get(Uri.parse("https://fakestoreapi.com/users"));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      setState(() {});
    } else {
      print('Failed to fetch users: ${response.statusCode}');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          DropdownButton(
            hint: const Text("Select your Username"),
            items: data.map((e) {
              return DropdownMenuItem(
                child: Text(e["username"]),
                value: e["id"],
              );
            }).toList(),
            value: _value,
            onChanged: (v) {
              setState(() {
                _value = v as int;
              });
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          DefaultButton(
            text: "Continue",
            press: () {
              final selectedUser = data.firstWhere((e) => e["id"] == _value);
              final selectedUsername = selectedUser["username"];

              Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "Hello There!\n\nYou're logged in as $selectedUsername",
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
