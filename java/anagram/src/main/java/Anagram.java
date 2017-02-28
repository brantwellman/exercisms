import java.util.List;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;

public class Anagram {
  private String word;
  private List<String> sortedWordLetters;

  public Anagram(String word) {
    this.word = word;
    this.sortedWordLetters = sortWord(word);
  }

  // private method - sortWord
  // returns List with sorted letters
  // splits word into array and sorts it

  private List<String> sortWord(String word) {
    List<String> sorted = new ArrayList<String>(Arrays.asList(word.split("")));

    Collections.sort(sorted);

    return sorted;
  }

  // public match method
  // returns List of words
  // should take list of words
  // iterates through List - calls sortWord on each
  // compares each array to sortWord - if identical - adds word to List

  public List<String> match(List<String> words) {
    List<String> sortedWords = new ArrayList<String>();

    words.forEach((matchWord) -> {
      if (sortWord(matchWord).equals(sortWord(word))) {
        sortedWords.add(matchWord);
      }
    });

    return sortedWords;
  }

}
