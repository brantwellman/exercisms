import java.util.Map;
import java.util.HashMap;

public class DNA {
  private String dnaString;

  public DNA(String dnaString) {
    this.dnaString = dnaString;
  }

  public int count(Character nucleotide) {
    return 0;
  }

  public Map<Character, Integer> nucleotideCounts() {
    Map<Character, Integer> map = new HashMap();
    map.put('A',0);
    map.put('C',0);
    map.put('G',0);
    map.put('T',0);
    return map;
  }
}
