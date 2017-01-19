import java.util.Map;
import java.util.HashMap;

public class DNA {
  private String dnaString;

  public DNA(String dnaString) {
    this.dnaString = dnaString;
  }

  public int count(Character nucleotide) {
    String validSymbols = "GACT";
    if (validSymbols.indexOf(nucleotide) == -1) {
      throw new IllegalArgumentException("That is not a valid nucleotide.");
    }

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
    Map<Character, Integer> counts = new HashMap();
    counts.put('A',0);
    counts.put('C',0);
    counts.put('G',0);
    counts.put('T',0);

    for (int i=0; i < dnaString.length(); i++) {
      char c = dnaString.charAt(i);
      int count = counts.get(c);
      counts.put(c, count + 1);
    }

    return counts;
  }
}
