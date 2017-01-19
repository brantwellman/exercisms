import java.util.Map;
import java.util.HashMap;

public class DNA {
  private String dnaString;
  private static String validSymbols = "ACGT";


  public DNA(String dnaString) {
    this.dnaString = dnaString;
  }

  public int count(Character nucleotide) {
    if (validSymbols.indexOf(nucleotide) == -1) {
      throw new IllegalArgumentException("That is not a valid nucleotide.");
    }

    int counter = 0;
    for (char c : dnaString.toCharArray()) {
      if (nucleotide.equals(c)) {
        counter++;
      }
    }

    return counter;
  }

  public Map<Character, Integer> nucleotideCounts() {
    Map<Character, Integer> counts = getNucleotideCounter();

    for (char c : dnaString.toCharArray()) {
      int count = counts.get(c);
      counts.put(c, count + 1);
    }

    return counts;
  }

  private Map<Character, Integer> getNucleotideCounter() {
    Map<Character, Integer> initialCounter = new HashMap();
    
    for (char c : validSymbols.toCharArray()) {
      initialCounter.put(c, 0);
    }

    return initialCounter;
  }
}
