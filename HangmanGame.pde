
Words words;
Man man;
char pickedLetter;
int start;
char typed;
void setup(){
    size(400,400);
    background(240);
    man = new Man();
    words = new Words();
    
}
void draw(){
    man.manDisplay();
 
   }
   
void keyPressed(){
  typed = key;
  if(key == '1')
    start = key;
    
    
  switch(key){
    case 'a': pickedLetter = 'a';
    case 'b': pickedLetter = 'b';
  }
  
  }

void playGame(){

   System.out.print("Play Game? Type 1.");
   if(start ==1){
      
    boolean inWord;
    String pickedWord = words.wordsList[(int)(Math.random()*(words.wordsList.length))];  
   
    ArrayList<String> Blank = new ArrayList<String>();
    for(int i =0; i<pickedWord.length();i++){
        Blank.add("_ ");
    }
      
  
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
