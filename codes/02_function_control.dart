main() {
    var myVariable = MyFunctions();
    myVariable.showDebug();
}

/* Time 15 */
class MyFunctions {

  /* function Control */

  int add(int op1, int op2, [int sign = 1]){
    return sign * (op1 + op2);
  }

  String concat({String? name, int age = 40}){
    return 'I am ${age}, this is ${name}';
  }

  void showDebug(){
    print('Show me!');
    print(add(2,3, -1));
    print(add(2,3));
    print(concat(name: 'Amir'));
  }


  /* Control */
  void myControls(){
    int myInt = 13;
    if( myInt > 20 ){
      print('>20');
    }else if ( myInt < 10 ){
      print('<10');
    }else {
      print('10<>20');
    }

    for(var i= 0; i<5; i++){
      print(i);
    }

    int i=0;
    while (i < 2){
      print('while');
      i++;
    }

    List myList = [1,2,3,4];
    for(int item in myList) {
      print(item);
    }
    myList.forEach((item) {
      print('${myList.indexOf(item)} ${item}');
    });

    int mySwitch = 30;
    switch(mySwitch){
      case 1:
        print('1');
        break;
      case 2:
      case 3:
        print('2, 3');
        break;
      default:
        print('Default');
    }
  }

  //showDebug();

}