import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FocusNode _focusNode = FocusNode();
  bool isFocus = false;
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {});
    if (_focusNode.hasFocus) {
      isFocus = true;
    } else {
      isFocus = false;
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'assets/chevron-left.png',
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 32,
          left: 32,
          top: 56,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 16,
                  ),
                  child: Text(
                    'Let’s sign you in',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 86,
                bottom: 24,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isFocus ? Colors.red : Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextFormField(
                  focusNode: _focusNode,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Type your email',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      height: 2.5,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 9.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Type your password',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    height: 2.5,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
