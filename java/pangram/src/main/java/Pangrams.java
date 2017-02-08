import java.util.Set;
import java.util.HashSet;

public class Pangrams {

  public static boolean isPangram(String sentence) {
    String sanitized = sanitize(sentence);

    Set<Character> set = createSet(sanitized);

    Boolean result = (set.size() == 26);
    return result;
  }

  private static String sanitize(String words) {
    String sanitized = words.toLowerCase().replaceAll("[^a-z]", "");
    return sanitized;
  }

  private static Set createSet(String sanitizedString) {
    Set<Character> characterSet = new HashSet<Character>();
    for (int i = 0; i < sanitizedString.length(); i++) {
      characterSet.add(sanitizedString.charAt(i));
    }
    return characterSet;
  }
}
