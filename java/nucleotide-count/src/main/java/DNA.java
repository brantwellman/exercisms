import java.util.Map;
import java.util.HashMap;

public class DNA {
  private String dnaString;

  public DNA(String dnaString) {
    this.dnaString = dnaString;
  }

  public int count(Character nucleotide) {
    int counter = 0;
    for (int i=0; i < dnaString.length(); i++) {
      char c = dnaString.charAt(i);
      if (nucleotide.equals(c)) {
        counter++;
      }
    }
    return counter;
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
