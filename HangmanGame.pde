Words words;
Man man;
char pickedLetter;


void setup() {
  size(400, 400);
  man = new Man();
  words = new Words();
  beginningScreen();
}
void draw() {
  background(240);
  man.manDisplay();
 
}

void keyPressed() {
  
  if (keyCode == ENTER) {
    playGame();


    switch(key) {
    case 'a': 
      pickedLetter = 'a';
    case 'b': 
      pickedLetter = 'b';
    case 'c': 
      pickedLetter = 'c';
    case 'd': 
      pickedLetter = 'd';
    case 'e': 
      pickedLetter = 'e';
    case 'f': 
      pickedLetter = 'f';
    case 'g': 
      pickedLetter = 'g';
    case 'h': 
      pickedLetter = 'h';
      
    }
  }
}
void beginningScreen(){
  System.out.println("Want to Play? Press Enter."); 
}
  
void playGame() {

  String pickedWord = words.wordsList[(int)(Math.random()*(words.wordsList.length))];  
  ArrayList<String> Blank = new ArrayList<String>();
  int found;
  for (int i =0; i<pickedWord.length(); i++) {
    Blank.add("_ ");
  }

  System.out.println("Welcome to Hangman - You must find the word before you pick 7 wrong letters! Just press a letter to play.");
  while (man.countBody<7) {
    System.out.println(pickedLetter);
    if (pickedWord.indexOf(pickedLetter) !=-1) {
      found = pickedWord.indexOf(pickedLetter);
      System.out.print(pickedLetter + "is in" + pickedWord + "at position" + found+1 +".");
      Blank.set(found, pickedLetter + " ");

      for (int i =0; i<Blank.size(); i++) {
        if (Blank.get(i)!= "_ ") {
          System.out.println("You win! The word was " + pickedWord +".");
        } else
          System.out.print(pickedLetter +" is not in " + pickedWord +".");
        man.countBody++;
      }
    }
    
  }
  System.out.println("You lose!...And so does he :(. The word was " + pickedWord + ".");
}
