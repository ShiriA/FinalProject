
Words words;
Man man;
PickedLetter pick;
char pickedLetter;
boolean check;



void setup() {
  size(400, 400);
  man = new Man();
  words = new Words();
  pick = new PickedLetter();
  beginningScreen();
}
void draw() {
  background(240);
  man.manDisplay();
}
void keyPressed() {
  if (key == '1') {
    playGame();
  
  }
}



void beginningScreen() {
  check = false;
  System.out.println("Want to Play? Press 1.");

}

void playGame() {
  String pickedWord = words.wordsList[(int)(Math.random()*(words.wordsList.length))];  
  ArrayList<String> Blank = new ArrayList<String>();
  int found;
  for (int i =0; i<pickedWord.length(); i++) {
    Blank.add("_ ");
  }

  System.out.print("Welcome to Hangman - You must find the word before you pick 6 wrong letters! Just press a letter to start playing.");



  while (man.countBody<=5) {
    
  
    
    if (pickedWord.indexOf(pickedLetter) !=-1) {
      found = pickedWord.indexOf(pickedLetter);
      System.out.print(pickedLetter + " is in " + pickedWord + " at position " + found+1 +".");
      Blank.set(found, pickedLetter + " ");
      pickedLetter = ' ';


      for (int i =0; i<Blank.size(); i++) {
        if (Blank.get(i)!= "_ ") {
          System.out.println("You win! The word was " + pickedWord +".");
        } else
          System.out.print(pickedLetter +" is not in " + pickedWord +".");
        man.countBody++;
        pickedLetter = ' ';
      }
    }
  }
  System.out.println("You lose!...And so does he :(. The word was " + pickedWord + ".");
}
