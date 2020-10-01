import 'package:flutter/material.dart';

class MultilineCommentTextWidget extends StatefulWidget {
  @override
  _MultilineCommentTextWidgetState createState() => _MultilineCommentTextWidgetState();
}

class _MultilineCommentTextWidgetState extends State<MultilineCommentTextWidget> {

  final TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
      ),
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 5,
        decoration: InputDecoration(
          labelText: 'Zusätzliche Informationen',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        controller: editingController,
      ),
    );
  }
}