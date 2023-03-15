import 'package:flutter/material.dart';
class ListBox extends StatefulWidget {
 final mainText;
  final  hintText;
   ListBox({Key? key, @required this.mainText, @required this.hintText}) : super(key: key, );

  @override
  _ListBoxState createState() => _ListBoxState();
}

class _ListBoxState extends State<ListBox> {
  @override

  Color _circle = Color(0xFFDAF6CF);
  Color _bordeColor = Color(0xFFD0D5DD);
  Color _selectedBordeColor = Color(0xFF1D6703);
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
         padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: _selectedBordeColor
                ),
                borderRadius: BorderRadius.circular(10),

              ),

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      //color: Colors.green,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: _circle,
                          borderRadius: BorderRadius.circular(100)),

                      child: Icon(
                        Icons.perm_identity_sharp,
                        color: _selectedBordeColor,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children:  [
                          Text(widget.mainText.toString(),style: TextStyle(
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,


                              fontSize: 16,
                              color: Color(0xFF1D2939)
                          ),),
                          Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Text(widget.hintText,style:
                            TextStyle(
                              color: Color(0xff667085),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'inter',
                            ),),
                          )
                        ],
                      ),
                    )

                  ],
                ),
              ),

            ),
          ),

        ],
      ),
    );
  }
}
