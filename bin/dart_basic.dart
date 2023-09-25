abstract class Human {
  void walk();
}

enum Team { red, blue }

class Player extends Human {
  String name;
  int xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  @override
  void walk() {
    print("${this.name} is walking");
  }

  void sayHello() {
    print("hello, i'm ${this.name}, my team color is ${this.team.name}");
  }
}

class Coach extends Human {
  @override
  void walk() {
    print('coach is walking!');
  }
}

void main(List<String> args) {
  var song = Player(
    name: 'song',
    xp: 1200,
    team: Team.red,
  );

  song.sayHello();
  song.walk();
}
