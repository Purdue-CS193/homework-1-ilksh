import java.util.*;

public class Purdue {
  public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);
    System.out.println("Complete the phrase.");
    System.out.println("Boiler __!");
    String answer = scan.nextLine();
    if (answer.toLowerCase().equals("up")) {
      System.out.println("HAMMER DOWN!");
    }
    else {
      System.out.println("WRONG!");
    }
  }
}
