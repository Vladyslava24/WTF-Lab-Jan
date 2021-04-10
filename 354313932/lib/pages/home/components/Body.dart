import 'package:chat_journal/constants.dart';
import 'package:chat_journal/models/Page.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: ListView.builder(
                      itemCount: pages.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF1E81F5),
                            ),
                            child: pages[index].icon,
                          ),
                          title: Text(pages[index].title),
                          subtitle: Text(pages[index].subtitle),
                          onTap: () {
                            print("ListTile $index tapped");
                          },
                        );
                      },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
