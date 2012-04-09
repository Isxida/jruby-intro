import java.util.*;

public class InternationalizationEx {

  public static void main(String[] args) {
    String lang, country;
    Locale cLocale;
    ResourceBundle msg;

    lang = new String("de");
    country = new String("DE");
    cLocale = new Locale(lang, country);

    msg = ResourceBundle.getBundle("MessagesBundle", cLocale);
    System.out.println(msg.getString("greetings"));
    System.out.println(msg.getString("welcome"));
  }

}
