import 'dart:math';

void main(List<String> arguments) {
  try {
    final length = int.tryParse(arguments[0]) ?? 0;
    String password = generatePassword(length);

    print(
      'Сгенерированный пароль: '
          '$password',
    );
  }
  catch (e) {
    print('Нет аргумента');
  }
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