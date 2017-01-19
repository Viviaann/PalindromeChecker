public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{ String reverseor= new String();
  for( int i=0; i<word.length();i++)
  {
    if(word.charAt(i)!=0 && Character.isLetter(word.charAt(i))==true)
    {
reverseor=reverseor+word.charAt(i);
  
    }
  };
  String rev= reverseor.toLowerCase();
  if (rev.equals(reverse(word)))
  {return true;
  }
  else
  {
   return false;
  
  }
  
}
public String reverse(String str)
{
    String sNew = new String();
    int last= str.length()-1;
    for ( int i= last; i>=0; i--)
    {
      if(str.substring(i,i+1)!=" " && Character.isLetter(str.charAt(i))==true)
      {
        String p= str.substring(i,i+1);
      sNew=sNew+p;
      }
      

    }
    return sNew.toLowerCase();

}


