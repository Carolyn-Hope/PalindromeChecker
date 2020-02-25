public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String str = word;
  str = noCapitals(str);
  str = onlyLetters(str);
  
  //your code here
  return(str.equals(reverse(str)));
}
public String reverse(String sWord){
  String rWord = "";
  for(int i = sWord.length() - 1; i >= 0; i--){
    rWord += sWord.charAt(i);
  }
  return(rWord);
}
public String noCapitals(String sWord)
{
  char x;
  String nocap = sWord;
  for(int i = 0; i < sWord.length(); i++){
    x = sWord.charAt(i);
    if(x >= 65 && x<= 90){
      x += 32;
      nocap = nocap.substring(0,i) + x + nocap.substring(i + 1);
    }
  }
  return nocap ;
}
public String onlyLetters(String sString){
  String oWord = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      oWord = oWord + sString.charAt(i);
    }
  }
  return(oWord);
}
public String noSpaces(String sWord){
  String oWord = "";
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.charAt(i) != ' '){
      oWord = oWord + sWord.charAt(i);
    }
  }
  return(oWord);
}
