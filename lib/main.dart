import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String password = generatePassword();

  print(
    'Сгенерированный пароль: '
    '$password',
  );
}

