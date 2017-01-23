import java.util.HashMap;
import java.util.Map;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;

public class WordCount {

  public Map<String, Integer> phrase(String phraseWords) {

    String[] words = sanitizeAndSplit(phraseWords);

    return constructWordMap(words);

  }

  private String[] sanitizeAndSplit(String sentence) {
    String[] sanitized = sentence.replaceAll("[^a-zA-Z0-9\\s]", "").replaceAll("\\s+", " ").toLowerCase().split(" ");
    return sanitized;
  }

  private Map<String, Integer> constructWordMap(String[] wordsArray) {
    Map<String, Integer> wordCount = new HashMap<String, Integer>();

    int i = 0;
    while (i < wordsArray.length) {
      if (wordCount.containsKey(wordsArray[i])) {
          int count = wordCount.get(wordsArray[i]);
          count++;
          wordCount.put(wordsArray[i], count);
      } else {
          wordCount.put(wordsArray[i], 1);
      }
      i++;
    }

    return wordCount;
  }
}
