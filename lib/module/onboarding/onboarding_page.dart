import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 350,
                child: Image.asset('assets/sammy.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 32.0,
                  right: 32.0,
                  top: 32.0,
                  bottom: 28.0,
                ),
                child: Text(
                  'Learn with pleasure with us, wherever you are!',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'singUp');
                  },
                  style: TextButton.styleFrom(
                    fixedSize: const Size.fromHeight(52),
                    backgroundColor: Colors.red,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Sing up',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  style: TextButton.styleFrom(
                    fixedSize: const Size.fromHeight(52),
                    backgroundColor: Colors.grey.shade200,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
