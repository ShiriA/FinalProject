# FinalProject

Hangman Game - The purpose of this project is a one-player game of hangman where a word is randomly selected from a large batch.

This version of Hangman is a game where the player has 7 attempts to guess a random word. The program tells the player if the typed letter is in the word. If not, the man that is to be hanged starts appearing on the screen.

### Difficulties or opportunities you encountered along the way.

I had a lot of trouble working with the key system variable and keyPressed(). I eventually got it to work so that the letter typed is stored and goes through the playGame method. Another difficulty was making sure that letters that were in the word more than once were all revealed. I had to add a for loop and move some things around to make that work.

### Most interesting piece of your code and explanation for what it does.

{
  pickedWord = wordsList[(int)(Math.random()*(wordsList.length))];  
  for (int i =0; i<pickedWord.length(); i++) {
    Blank.add("_ ");
  }
  
This is the code that picks a random word from an array of many words that I added. It adds underscores to a Blank arraylist which is printed so that the player knows the length of the word but not the letters.

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Akash Shiri* 

## Acknowledgments

* I got some help from Jason Senthil who was a Senior last year! Also the processing repository and YT videos helped a lot.
* I had inspiration from playing Hangman in Chemistry after the AP Exam! Also I played it alot as a kid and have always liked the game!
