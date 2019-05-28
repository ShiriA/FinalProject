
Words words;
Man man;

char pickedLetter = ' ';
char clicked;
char start;
int index;

void setup() {
  size(400, 400);
  man = new Man();
  words = new Words();

 
 System.out.println("Welcome to Hangman - You must find the word before you pick 6 wrong letters! Just press a letter to start playing.");
 System.out.println();
}
void draw() {
  background(240);
  man.manDisplay();
  //text.
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
  if (man.countBody<=5) {
    if(pickedWord.indexOf(pickedLetter) !=-1){
     for (index = pickedWord.indexOf(pickedLetter); index >= 0; index++){
       if(pickedWord.indexOf(pickedLetter) !=-1){
   

        index++;
        System.out.println(pickedLetter + " is in the word at position " + index +".");
        System.out.println();
        index--;
        Blank.set(index, pickedLetter + " ");
        pickedLetter = ' ';
        System.out.println(Blank);

  
        if (!Blank.contains("_ ")){
            System.out.println("You win! The word was " + pickedWord +".");
        }
          else{
            playGame();
          }
          
          
            
       
      } 
    }
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
          System.out.println("tap to replay.");
        }
      }
  
  }  
  else{
    words.wordCall();
    playGame();
    man.countBody =0;
    draw();

    
  }
  }
  
  
}
