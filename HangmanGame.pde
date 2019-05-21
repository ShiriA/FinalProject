import java.util.Scanner;
Words words;
Man man;


void setup(){
    size(400,400);
    background(240);
    man = new Man();
    words = new Words();
   
}
void draw(){
    man.manDisplay();
   
   }

{
Scanner input = new Scanner(System.in);
System.out.print("Play Game? Type 1.");

  int start = input.nextInt();
  
  if(start == 1){
    boolean inWord;
    String pickedLetter= input.nextLine();
    String pickedWord = words.wordsList[(int)(Math.random()*(words.wordsList.length))];  
//arraylist
       
      System.out.println("Welcome to Hangman - You must find the word before you pick 7 wrong letters!");
       if(pickedWord.indexOf(pickedLetter) !=-1){
        inWord =true;
       }
        inWord = false;
        if(inWord == true){
        
      
      }
        System.out.print(pickedLetter +" is not in " + pickedWord +".");
      
      
      
  
    System.out.println("You lose!...And so does he :(");
    }
}
