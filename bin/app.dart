import 'dart:io';

main(List<String> args) {
  // <option 1> CASCADE NOTATION
  // MonsterUcoa m = MonsterUcoa(status: UcoaStatus.confused)
  //   ..move()
  //   ..eat();

  // <option 2> CASCADE NOTATION
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.confused);
  print("Hello World");
  m
    ..move()
    ..eat();
}

enum UcoaStatus { normal, posioned, confused } // ENUM

class MonsterUcoa {
  late final UcoaStatus status; // 1: Normal; 2: Posioned; 3: Confused;

  MonsterUcoa({this.status = UcoaStatus.normal});

  void move() {
    switch (status) {
      case UcoaStatus.normal:
        print('Ucoa is moving');
        break;
      case UcoaStatus.confused:
        print('Ucoa cannot move. Ucoa is dying. Ucoa needs help. ');
        break;
      case UcoaStatus.posioned:
        print('Ucoa is spinning. Dart languange is confusing.');
        break;
      default:
    }
  }

  void eat() {
    print('Ucoa is eating Indomie.');
  }
}
