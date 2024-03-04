import 'dart:io';
import 'dart:math';

void main() {

    final length = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    String password = generatePassword(length);

    print(
      'Сгенерированный пароль: '
          '$password',
    );
  }


String generatePassword(int length) {
  const charset = 'abcdefghijklmnopqrstuvwyz'
      'ABCDEFGHIJKLMNOPQRSTUVWYZ'
      '0123456789';


  var random = Random.secure();

  return String.fromCharCodes(
    List.generate(
      length,
      (_) => charset.codeUnitAt(
        random.nextInt(charset.length),
      ),
    ),
  );
}