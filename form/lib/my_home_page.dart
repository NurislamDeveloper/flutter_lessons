import 'package:flutter/material.dart';
import 'package:form/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool hiden = true;
  String accounts = "";
  String passwords = "";
  String emails = "";
  String messages = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Nurislam",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 70,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(
            12.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (acount) {
                  accounts = acount;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        12,
                      ),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.blue,
                    size: 35,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 70,
                  ),
                  hintText: "Name",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                onChanged: (password) {
                  passwords = password;
                },
                obscureText: hiden,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        12,
                      ),
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.password_outlined,
                    color: Colors.blue,
                    size: 35,
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 65,
                  ),
                  hintText: "Password",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                  ),
                  suffixIcon: IconButton(
                    padding: const EdgeInsetsDirectional.only(
                      end: 12.0,
                    ),
                    icon: hiden
                        ? const Icon(
                            Icons.visibility_off,
                            size: 27,
                          )
                        : const Icon(
                            Icons.visibility,
                          ),
                    onPressed: () {
                      setState(
                        () {
                          hiden = !hiden;
                        },
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                onChanged: (email) {
                  emails = email;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        12,
                      ),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.blue,
                    size: 35,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 70,
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                onChanged: (message) {
                  messages = message;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        12,
                      ),
                    ),
                  ),
                  contentPadding: EdgeInsets.all(
                    60,
                  ),
                  prefixIcon: Icon(
                    Icons.message,
                    color: Colors.blue,
                    size: 35,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 70,
                  ),
                  hintText: "Message",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.blue,
                    ),
                    minimumSize: MaterialStatePropertyAll(Size(
                      double.infinity,
                      60,
                      ),
                     ),
                    ),
                onPressed: () {
                  if (accounts.isEmpty || passwords.isEmpty || emails.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.blueGrey,
                        duration: Duration(milliseconds: 500),
                        content: Center(
                          child: Text(
                            "Please fill it all out !",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(
                          useraccount: accounts,
                          userPassword: passwords,
                          userEmail: emails,
                          userMessage: messages,
                        ),
                      ),
                    );
                  }
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
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
