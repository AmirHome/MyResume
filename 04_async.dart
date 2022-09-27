main() async{

  print('Starting..');
  timer(5);
  /* Fetech Data from DB (API) */
  await fetechUserData();

  print('Feteched.');
}

void timer(int s) {
  for(var i=1; i&lt;s; i++){
    Future.delayed(Duration(seconds: i), ()=>print(i));
  }
}

Future&lt;void&gt; fetechUserData() {
  return Future.delayed(Duration(seconds:3), ()=> print('Data'));
}