import java.util.Scanner;
Words words;
Man man;

void setup(){
    size(400,400);
    background(240);
    man = new Man();
    words = new Words();
    int start;
}
void draw(){
// while(key =='1')
    man.manDisplay();
   
   }


//void keyPressed(){
 // if(key == '1')
  //  start =1;
     
//}

{
Scanner input = new Scanner(System.in);
System.out.print("Play Game? Type any number.");

  if(input.hasNextInt()){
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
