
Words words;
Man man;

char pickedLetter = ' ';
char clicked;
char start;

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
      if (pickedWord.indexOf(pickedLetter) !=-1) {
        found = pickedWord.indexOf(pickedLetter)+1;
        System.out.println(pickedLetter + " is in the word at position " + found +".");
        Blank.set(found-1, pickedLetter + " ");
        pickedLetter = ' ';
        System.out.println(Blank);

  
        if (!Blank.contains("_ ")){
            System.out.println("You win! The word was " + pickedWord +".");
        }
          else{
            playGame();
          }
          
          
            
       
      } else {
        System.out.println(pickedLetter +" is not in the word.");
        man.countBody++;
        draw();
        System.out.println(Blank);
        System.out.println();
        
        pickedLetter = ' ';
      }
    
  }  
  else
    System.out.println("You lose!...And so does he :(. The word was " + pickedWord + ".");
    return;
  }
  
}
