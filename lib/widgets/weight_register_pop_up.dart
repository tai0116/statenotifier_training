import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statenotifier_training/widgets/register_button.dart';

class WeightRegisterPopUp extends StatelessWidget {
  const WeightRegisterPopUp(this.saveWeight, this.saveComment, this.registerOnTap);

  final saveWeight;
  final saveComment;
  final registerOnTap;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('今日の体重を入力しよう'),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 24,
      ),
      children: [
        Row(
          children: [
            Container(
              width: 200,
              padding: EdgeInsets.only(left: 4),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '嘘つくなよ',
                  labelText: '今日の体重',
                ),
                onChanged: (value) {
                  saveWeight(value);
                },
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Kg'),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 200,
          padding: EdgeInsets.only(left: 4),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '後悔先に立たず',
              labelText: '懺悔の一言',
            ),
            onChanged: (value) {
              saveComment(value);
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RegisterButton(registerOnTap)
      ],
    );
  }
}
