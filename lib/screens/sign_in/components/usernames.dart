import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
  bool _isLoading = false;
  String _errorMessage = '';

  getData() async {
    try {
      final response =
          await http.get(Uri.parse("https://fakestoreapi.com/users"));
      if (response.statusCode == 200) {
        data = jsonDecode(response.body);
      } else {
        setState(() {
          _errorMessage = 'Failed to fetch users: ${response.statusCode}';
        });
      }
    } catch (error) {
      setState(() {
        _errorMessage =
            'Connect to the Internet and reload this page to select your username';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _isLoading
          ? CircularProgressIndicator() // Show a loading indicator while fetching data
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_errorMessage
                    .isNotEmpty) // Show the error message if it is not empty
                  SizedBox(height: SizeConfig.screenHeight * 0.1),
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
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    _errorMessage,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                DefaultButton(
                  text: "Continue",
                  press: () {
                    final selectedUser =
                        data.firstWhere((e) => e["id"] == _value);
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
