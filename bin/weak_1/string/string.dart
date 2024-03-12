class Strings{

  concatunation(String str1 , String str2){
    String result = str1+str2;
    print(result);
  }

  replace(String str){
    String result = str.replaceAll("fouzan", "K");
    print(result);
  }

  trim(String text){
   String result = text.trim();
   print(result);
  }

  containCheck(String str){
    bool result = str.contains('foz');
    print(result);
  }

  upperAndLower(String str1 , String str2){
    String upper = str1.toUpperCase();
    String lower = str2.toLowerCase();
    print(upper);
    print(lower);
  }

  

}
void main(){
  Strings value = Strings();
  value.concatunation("hai", 'jaseem');
  value.replace("p",);
  value.trim('  hello  ');
  value.upperAndLower("hello", "hELLO");
  value.containCheck('foz');
}