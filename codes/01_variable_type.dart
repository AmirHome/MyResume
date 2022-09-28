main() {
    var myVariable = MyVariable();
    myVariable.showDebug();
}

/* Time 10 */
class MyVariable {

  /* Type */
  bool myBool = true;
  int myInt = -45;
  double myDouble = -9999.88;
  String myString = 'String';
  List myArray = [1,2,2,2,3,4];
  List&lt;String&gt; myArrayStr = ['1,2,2,3','4'];
  Set mySet = &lt;String&gt; {'A', 'B', 'C'}; // unique
  Map&lt;String, dynamic &gt; myMap = {'A':1, 'B':'two', 'C':3, 'D':{'D1':1, 'D2': 2}};// json

  var myVar = 'var';
  dynamic myDynamic = 'Dynamic';

  final String myFinal = 'Final';
  static const double myConst = 3.14;


  void myChanges(){
    /* Wrong */
    //myFinal = 'Final Change';
    //myConst = 'const Change';
    /* Dont Change Type */
    myVar = 'var changed';
    myDynamic = 'Dynamic changed' + ' ' + myString;
  }

  void showDebug(){
    /* Debug */
    print(myBool);
    print(myInt);
    print(myDouble);
    print(myString);
    print(myArray);
    print(myArrayStr);
    print(mySet);
    print(myMap);
    print(myVar);
    print(myDynamic);
    print(myFinal);
    print(myConst);
  }


}