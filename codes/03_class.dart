

main(){

  Person person = Person('Andia', age: 11);
  Developer developer = Developer('Amir', 3000, age: 40);
  Manager manager = Manager('Mr. Dee', 10000, age: 39);


  person.infoPerson();

  developer.infoAccount();
  developer.infoPerson();
  developer.infoProfession();
}

/* Class Abstract Extends Interface Implements */

class Person {
  /*
  * Fields
  * Getter/Setter
  * Constructor
  * Methods Functions
  * */

  /* Private */
  String _name;
  int _age;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  /*Constructor*/
  // Person(this._name, this._age);
  Person(String name, {int age = 18})
  : _name = name, _age = age;

  /* Method */
  // String infoPerson() => 'This is $name, im $age';
  void infoPerson() {
    print('This is $name, im $age');
  }
}

abstract class Employee extends Person {
  double _salary;

  /* Constructor */
  Employee(String name, this._salary, {int age = 18}) : super(name, age: age);

  /* abstract method */
  void infoAccount();
}

class Developer extends Employee implements Profession {
  Developer(String name, double salary, {int age = 18})
      : super(name, salary, age: age);

  @override
  void infoAccount() {
    print('Salary is $_salary');
  }

  @override
  infoProfession(){
    print('My Profession is Developer');
  }
}

class Manager extends Employee {

  /* Constructor */
  Manager(String name, double salary, {int age = 18})
      : super(name, salary, age: age);

  @override
  String infoAccount() => 'Salary is $_salary';

}

/* Interface */
class Profession {
  void infoProfession() => print('Profession is ..');
}

/*
  Person person = Person('Andia', age: 11);
  Developer developer = Developer('Amir', 3000, age: 40);
  Manager manager = Manager('Mr. Dee', 10000, age: 39);


  person.infoPerson();

  developer.infoAccount();
  developer.infoPerson();
  developer.infoProfession();
* */