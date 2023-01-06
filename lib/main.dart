import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CreateAccount());
  }
}

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() {
    print("create state called");
    return _CreateAccountState();
  }
}

class _CreateAccountState extends State<CreateAccount> {
  bool rememberMe = false;
  @override
  void didChangeDependencies() {
    print("didChangeDependencies called");
    super.didChangeDependencies();
  }

  @override
  void initState() {
    print("initstate called");
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CreateAccount oldWidget) {
    print("did update widget called");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print("deactivate called");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose called");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build called");
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: const [
                    Text(
                      "5:19",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 76,
                  width: 76,
                  color: const Color(0xffB5E742),
                ),
                Container(
                  height: 76,
                  width: 76,
                  color: const Color(0xffe1f5b3),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 76,
                  width: 76,
                  color: const Color(0xffe1f5b3),
                ),
                Container(
                  height: 76,
                  width: 76,
                  color: const Color(0xfff3fbe1),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Create New Account",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  TextField(
                    cursorColor: Colors.black,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: const TextStyle(
                        color: Color(0xff000000),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      suffixIcon: const Icon(Icons.circle),
                      suffixIconColor: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: const TextStyle(
                        color: Color(0xff000000),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      suffixIcon: const Icon(Icons.circle),
                      suffixIconColor: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    cursorColor: Colors.black,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Recent Password",
                      labelStyle: const TextStyle(
                        color: Color(0xff000000),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      suffixIcon: const Icon(Icons.circle),
                      suffixIconColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "By creating account you agree\nto our terms of conditions",
              style: TextStyle(
                color: Color(0xffD9D9D9),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: rememberMe,
                  onChanged: (value) {
                    setState(() {
                      rememberMe = !rememberMe;
                    });
                    print(rememberMe);
                  },
                ),
                const Text(
                  "remember me",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 61,
                    width: 280,
                    decoration: BoxDecoration(
                      color: const Color(0xff6D62F7),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 61,
                    width: 280,
                    decoration: BoxDecoration(
                      color: const Color(0xffB5E742),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("This is dashboard page"),
      ),
    );
  }
}
