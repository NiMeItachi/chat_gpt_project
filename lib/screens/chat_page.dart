import 'package:chat_gpt_project/components/colors/project_colors.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static const String id = 'chat_page_id';

  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.chatBackground,
      drawer: Drawer(
        backgroundColor: MyColors.chatDrawer,
        width: MediaQuery.of(context).size.width * 0.6,
        //Buttons
        child: ListView(
            children: [
              //Button: New Chat
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.white, width: 1),
                    ),
                  ),
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 115,
                      height: 50,
                      child: Row(
                        children: [
                          Image.asset("assets/icons/plus_icon.png"),
                          const SizedBox(width: 15),
                          const Text(
                            "New Chat",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Inter"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //History 1
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SizedBox(
                  width: 115,
                  height: 50,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/history_icon.png"),
                      const SizedBox(width: 15),
                      const Text(
                        "What is UX Design",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Inter"),
                      ),
                    ],
                  ),
                ),
              ),

              //History 2
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SizedBox(
                  width: 115,
                  height: 50,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/history_icon.png"),
                      const SizedBox(width: 15),
                      const Text(
                        "Color Palettes",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Inter"),
                      ),
                    ],
                  ),
                ),
              ),

              //Line
              const SizedBox(height: 320),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: 50,
                height: 1,
                color: const Color.fromRGBO(120, 120, 120, 1),
              ),

              //Clear Conversation
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 115,
                  height: 50,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/remove_icon.png"),
                      const SizedBox(width: 15),
                      const Text(
                        "Clear Conversation",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Inter"),
                      ),
                    ],
                  ),
                ),
              ),

              //Upgrade to Plus
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 115,
                  height: 50,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/profile_icon.png"),
                      const SizedBox(width: 15),
                      const Text(
                        "Upgrade to Plus",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Inter"),
                      ),
                    ],
                  ),
                ),
              ),

              //Dark Mode
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 115,
                  height: 50,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/dark_mode_icon.png"),
                      const SizedBox(width: 15),
                      const Text(
                        "Dark Mode",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Inter"),
                      ),
                    ],
                  ),
                ),
              ),

              //Updates and FAQs
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 115,
                  height: 50,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/update_icon.png"),
                      const SizedBox(width: 15),
                      const Text(
                        "Updates and FAQs",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Inter"),
                      ),
                    ],
                  ),
                ),
              ),

              //Log out
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 115,
                  height: 50,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/log_out_icon.png"),
                      const SizedBox(width: 15),
                      const Text(
                        "Log out",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Inter"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Menu Button
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Builder(
                    builder: (context) => IconButton(
                        onPressed: (){
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(Icons.menu, color: Colors.white,),
                    ),
                  ),
                ),
              ),

              //User Icon
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Image.asset("assets/images/user_img.png"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "What is UX Design?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter",
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              //Response
              const SizedBox(height: 40),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 450,
                color: MyColors.chatResponse,
                child: Row(
                  children: [
                    //Icon
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: const EdgeInsets.only(left: 25, top: 30),
                        width: 35,
                        height: 35,
                        color: MyColors.iconBackground,
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/images/logo_img.png",
                            width: 25,
                            height: 25,
                          ),
                        ),
                      ),
                    ),
                    //Text
                    SizedBox(
                      height: 450,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 17, top: 30),
                        child: Text(
                          "UX design, or user experience design, refers to the process of designing products or services that are intuitive, accessible, and easy to use for the end user. The goal of UX design is to create products and services that are useful, usable, and desirable, and that meet the needs and expectations of the user.\n\n\nUX designers use a range of techniques and tools to understand the user's needs, behaviors, and preferences, and to create designs that are tailored to those needs. They may conduct user research, create personas, develop wireframes and prototypes, conduct usability testing, and analyze user feedback in order to improve the user experience.",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Inter",
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Button
              const SizedBox(height: 20),
              OutlinedButton(
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.white, width: 1),
                  ),
                ),
                onPressed: () {},
                child: SizedBox(
                  width: 200,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/refresh_icon.png"),
                      const SizedBox(width: 15),
                      const Text(
                        "Regenerate Response",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Inter"),
                      ),
                    ],
                  ),
                ),
              ),

              //Input
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                      ),
                      fillColor: const Color.fromRGBO(99, 100, 115, 1),
                      filled: true,
                      suffixIcon: Image.asset("assets/icons/send_icon.png"),
                      focusColor: Colors.white),
                  style: const TextStyle(fontFamily: "Inter", color: Colors.white),
                  cursorColor: Colors.white,
                ),
              ),

              //Rich Text
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(fontSize: 10),
                      children: [
                        TextSpan(
                          text: "ChatGPT Mar 14 Version",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white),
                        ),
                        TextSpan(text: ". Free Research Preview. "),
                      ],
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
