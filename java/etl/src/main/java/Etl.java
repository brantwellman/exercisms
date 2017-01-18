import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;

public class Etl {

  public Map<String, Integer> transform(Map<Integer, List<String>> old) {
    Map<String, Integer> dictionary = new HashMap<String, Integer>();

    old.forEach( (k, v) -> iterateList(dictionary, k, v) );
    return dictionary;
   }

  private Map<String, Integer> iterateList(Map<String, Integer> newDictionary, int key, List<String>value) {
    for (String letter : value) {
      newDictionary.put(letter.toLowerCase(), key);
    }
    return newDictionary;
  }
}
