String pickedWord;

ArrayList<String> Blank = new ArrayList<String>();
public class Words {

  public Words() {
  }
  public void wordCall() {

    String[] wordsList = {"driver", "customize", "project", "length", "random", "picked", "arrays", "command", "option", "control", "percentage", "century", "dollar", "eight", "thirty", "asterisk", "robot", "video", "pieces", "final", "nebula", "pickles", "chicken", "finger", "zebra", "xylophone", "tongue", "raptor", "jazzy", "packet", "books", "scissors", "necklace", "phone", "yearbook", "notification", "chrome", "school", "manly", "geology", "papers", "notebooks", "methology", "pineapple", "juice", "mango", "apple", "clock", "program", "headset", "musician", "error", "network", "folder", "basket", "school", "computer", "science", "mathematics", "coding", "artwork", "literature", "recreation", "flavor", "living", "pleasant", "warmth", "pricey", "aquatic", "culture", "chief", "tense", "discussion", "swimmer", "smash", "product", "distance", "produce", "arrogant", "satisfy", "aggressive", "speed", "house", "awaken", "honorable", "confusion", "voice", "oranges", "capture", "point", "terrify", "relaxed", "joint", "polish", "representative", "savory", "jewel", "linen", "lumpy", "pacify", "expect", "function", "crave", "wordy", "trains", "written", "lawyer", "describe", "present", "magnificent", "weary", "eyewear", "stink", "brake", "subsequent", "spooky", "scream", "vengeful", "cheerful", "expensive", "crowded", "jellybean", "innovate", "achieve", "rampant", "dramatic", "friend", "quizzical", "conclude", "nervous", "chilly", "slimy", "participate", "father", "changeable", "banana", "inflection", "green", "black", "payment", "kettle", "neglect", "mislead", "complain", "hurried", "creepy", "journey", "snake", "stove", "winter", "offset"};
    {
      pickedWord = wordsList[(int)(Math.random()*(wordsList.length))];  
      for (int i =0; i<pickedWord.length(); i++) {
        Blank.add("_ ");
      }
    }
  }
}
