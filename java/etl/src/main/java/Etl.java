import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;

public class Etl {
   public Map<String, Integer> transform(Map<Integer, List<String>> old) {
      Map<String, Integer> dictionary = new HashMap<String, Integer>();
      Set<Integer> keys = old.keySet();

      for (Integer key : keys) {
        dictionary.put(old.get(key).get(0).toLowerCase(), key);
      }

      return dictionary;
   }
}
