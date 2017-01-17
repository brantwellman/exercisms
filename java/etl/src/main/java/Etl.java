import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;

public class Etl {
   public Map<String, Integer> transform(Map<Integer, List<String>> old) {
      Map<String, Integer> dictionary = new HashMap<String, Integer>();

      old.forEach( (k, v) -> dictionary.put(v.get(0).toLowerCase(), k));

      return dictionary;
   }
}
