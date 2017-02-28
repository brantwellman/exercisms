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

  private List<String> sortWord(String word) {
    List<String> sorted = Arrays.asList(word.toLowerCase().split(""));

    Collections.sort(sorted);

    return sorted;
  }

  public List<String> match(List<String> words) {
    List<String> sortedWords = new ArrayList<String>();

    words.forEach((matchWord) -> {
      if (sortWord(matchWord).equals(sortedWordLetters) && !word.equals(matchWord.toLowerCase())) {
        sortedWords.add(matchWord);
      }
    });

    return sortedWords;
  }
}
