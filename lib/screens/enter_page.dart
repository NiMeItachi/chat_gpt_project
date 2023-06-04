import 'package:chat_gpt_project/components/colors/project_colors.dart';
import 'package:chat_gpt_project/screens/chat_page.dart';
import 'package:flutter/material.dart';

class EnterPage extends StatelessWidget {
  static const String id = 'enter_page_id';
  const EnterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Stack(
          children: [
            //Background
            Container(
              height: double.infinity,
              width: double.infinity,
              color: MyColors.enterBackground,
              child: Image.asset(
                "assets/images/background_img.png",
              ),
            ),

            //Foreground
            Column(
              children: [
                //Image
                const SizedBox(height: 250),
                Image.asset("assets/images/logo_img.png"),

                //Text: Welcome
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome To ChatGPT",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                      color: MyColors.textPink,
                    ),
                  ),
                ),

                //Text: Dialogue
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "The dialogue format makes it possible for ChatGPT to answer followup questions, admit its mistakes, challenge incorrect premises, and reject inappropriate requests.",
                      style: TextStyle(
                        fontSize: 19,
                        fontFamily: "Inter",
                        color: MyColors.textPink,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                //Button
                const SizedBox(height: 150),
                OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      const BorderSide(
                        width: 2,
                        color: Color.fromRGBO(255, 139, 255, 1),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, ChatPage.id);
                  },
                  child: SizedBox(
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Try ChatGPT",
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: "Inter",
                            color: MyColors.textPink,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: MyColors.textPink,
                        ),
                      ],
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
