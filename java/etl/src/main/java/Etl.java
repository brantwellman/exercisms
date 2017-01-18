import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;

public class Etl {
  public Map<String, Integer> dictionary = new HashMap<String, Integer>();

  public Map<String, Integer> transform(Map<Integer, List<String>> old) {
    old.forEach( (k, v) -> iterateList(k, v) );
    return dictionary;
   }

  public void iterateList(int key, List<String>value) {
    for (String letter : value) {
      dictionary.put(letter.toLowerCase(), key);
    }
  }
}
