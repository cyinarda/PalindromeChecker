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
  String noSpaces = onlyLetters(word);
  String noCapitals = onlyLowerCase(noSpaces);
  String backwards = reverse(noCapitals);

  if(reverse(noSpaces).equals(noSpaces))
  {
    return true;
  }
  if(reverse(noCapitals).equals(noCapitals))
  {
    return true;
  }
  return false;
}


public String onlyLetters(String newStr)
{
  String newString = "";
  for(int i = 0; i < newStr.length(); i++)
  {
    if(Character.isLetter(newStr.charAt(i)) == true)
    {
      newString += newStr.substring(i, i + 1);
    }
  }
  return newString;
}

public String onlyLowerCase(String newStri)
{
  String newWord = "";
  for(int i = 0; i < newStri.length(); i++)
  {
    newWord += newStri.substring(i, i + 1).toLowerCase();
  }
  return newWord;
}



public String reverse(String str)
{
   String anotherString = "";
  
  int last = str.length() - 1;
  for(int i = last; i >= 0; i--)
  {
    anotherString += str.substring(i, i +1);
  }
  return anotherString;
}


