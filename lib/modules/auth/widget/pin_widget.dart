// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:myfootball/modules/home/home_module.dart';
import 'package:myfootball/modules/home/home_route.dart';
import 'package:myfootball/modules/player/player_module.dart';
import 'package:myfootball/utils/rotue_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PinWidget extends StatefulWidget {
  PinWidget({Key? key}) : super(key: key);

  @override
  State<PinWidget> createState() => _PinWidgetState();
}

class _PinWidgetState extends State<PinWidget> {
  TextEditingController _phoneController = TextEditingController();
  FocusNode _phoneFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Color(0xFF219653),
            padding: EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                SizedBox(
                  height: 55,
                ),
                Text(
                  "Wellcome back",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 23),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "supported formats:  mp4,m3u8,mkv",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "ဘောပွဲများ ကြည့်ရန် ၁ ငါးခါနှိပ်၍ ဝင်ပါ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.3,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: _phoneController,
              focusNode: _phoneFocus,
              textInputAction: TextInputAction.done,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 8),
                hintText: "Please enter the url you want to watch ",

                fillColor: Colors.grey[200],
                // hintStyle: TextStyle(
                //   fontFamily: 'pyidaungsu',
                // ),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0),
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0),
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty)
                  return "Enter Url";
                else
                  return null;
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "we don’t host and provide any stream links",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();

              var texts = _phoneController.text;
              if (texts == "11111" || texts == "၁၁၁၁၁") {
                prefs.setBool("login", true);
                RouteUtils.changeRoute<HomeModule>(HomeRoute.root,
                    isReplace: true);
              } else if (texts.startsWith("https://") &&
                      texts.endsWith(".m3u8") ||
                  texts.endsWith(".mp4") ||
                  texts.endsWith(".mkv")) {
                RouteUtils.changeRoute<PlayerModule>(HomeRoute.player,
                    args: texts);
              } else {
                _phoneController.text = "";
                _phoneFocus.unfocus();
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Invalid Url"),
                ));
              }
              // if (_phoneController.text.isEmpty) {
              //   return;
              // }
              // Navigator.pushNamed(context, "/player",
              //     arguments: _phoneController.text);
            },
            child: Text(
              "go and watch",
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0.3),
              backgroundColor: MaterialStateProperty.all<Color>(
                Color(0xFF219653),
              ),
            ),
            // color: Color(0xFF219653),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(10),
            // ),
          ),
        ],
      ),
    );
  }
}
