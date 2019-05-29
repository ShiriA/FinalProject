Words words;
Man man;

char pickedLetter = ' ';
int index;

void setup() {
  size(400, 400);
  man = new Man();
  words = new Words();
  words.wordCall();
 
 System.out.println("Welcome to Hangman - You must find the word before you pick 6 wrong letters! Just press a letter to start playing.");
 System.out.println();
}
void draw() {
  background(240);
  man.manDisplay();
  //text. (used letters and remaining?) Add
}
void keyPressed() {

  if (Character.isLetter(key)) {
    pickedLetter = key; 
    playGame();
  }

}

void keyReleased(){
  if(keyPressed)
    keyPressed = false;
}



void playGame() {
  
  while(pickedLetter != ' '){
   
    if(pickedWord.indexOf(pickedLetter) !=-1){
     for (index = pickedWord.indexOf(pickedLetter); index <pickedWord.length(); index++){
      if(pickedWord.charAt(index)==pickedLetter){

        
        
        index++;
        System.out.println(pickedLetter + " is in the word at position " + index +".");
        System.out.println();
        index--;
        Blank.set(index, pickedLetter+"");
        
        System.out.println(Blank);
        System.out.println();

  
        if (!Blank.contains("_ ")){
            System.out.println("You win! The word was " + pickedWord +".");
        }
         // else{
        //    playGame();
         // }
          
          
      }
      
      } 
    pickedLetter = ' ';
    }
      else {
        System.out.println(pickedLetter +" is not in the word.");
        man.countBody++;
        draw();
        System.out.println(Blank);
        System.out.println();
        
        pickedLetter = ' ';
        if(man.countBody ==6){
          System.out.println("You lose!...And so does he :(. The word was " + pickedWord + ".");
          System.out.println();
         
        }
     
      }
  
   
  

    
  }
  
  
  
}
