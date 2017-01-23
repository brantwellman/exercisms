import java.util.HashMap;
import java.util.Map;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;

public class WordCount {

  public Map<String, Integer> phrase(String phraseWords) {
    Map<String, Integer> wordCount = new HashMap<String, Integer>();

    String sanitized = phraseWords.replaceAll("[^a-zA-Z0-9\\s]", "").replaceAll("\\s+", " ").toLowerCase();
    String[] words = sanitized.split(" ");
    int i = 0;
    while (i < words.length) {
      if (wordCount.containsKey(words[i])) {
          int count = wordCount.get(words[i]);
          count++;
          wordCount.put(words[i], count);
      } else {
          wordCount.put(words[i], 1);
      }
      i++;
    }

    return wordCount;
  }

}
