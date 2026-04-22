# 01 · Hvad er programmering — og hvad er Java?

## Hvad er programmering?

Et program er en samling instruktioner som computeren udfører præcist og hurtigt. Uanset hvilket programmeringssprog du bruger, er alle programmer bygget af de samme tre grundideer:

**Data** — programmet husker ting. En position, et navn, en pris, en farve. Uden data kan et program ikke holde styr på noget som helst.

**Forgrening** — programmet træffer beslutninger. *Hvis* noget er sandt, gør det ene. *Ellers* gør det andet. Det er det der gør programmer dynamiske frem for statiske.

**Repetition** — programmet gentager ting. En animation kører frame for frame. En liste gennemløbes post for post. Computeren er god til at gøre det samme igen og igen — uden at blive træt.

Resten er detaljer.

---

## Java og IntelliJ

Java er et af verdens mest udbredte programmeringssprog. Det bruges i alt fra bankernes kernesystemer til Android-apps og store webapplikationer. Java er kendt for at være struktureret og eksplicit — computeren gør præcist det du beder den om, ikke mere.

IntelliJ IDEA er det udviklingsmiljø vi bruger til at skrive og køre Java-kode. Det er et professionelt værktøj der bruges i industrien, og det hjælper dig med at skrive korrekt kode ved at markere fejl, foreslå rettelser og organisere dine filer.

Download og installer: [jetbrains.com/idea/download](https://www.jetbrains.com/idea/download) (vælg **Community Edition** — den er gratis)

Når du åbner IntelliJ og opretter et nyt Java-projekt, finder du din kode i mappen `src`. Tryk **▶ Run** øverst for at køre dit program.

---

## main()-metoden

Alle Java-programmer starter det samme sted: i `main()`-metoden. Når du kører dit program, er det den første linje i `main()` der udføres.

```java
public class Main {
    public static void main(String[] args) {
        // Din kode starter her
    }
}
```

`main()` er en *metode* — en navngivet pakke af instruktioner. Du vil snart lære at skrive dine egne. Foreløbig er det nok at vide at alt du skriver skal stå inden i de to tuborgklammer.

---

## Et helt program — alle tre ideer på én gang

Kør dette program og se hvad der sker. Du behøver ikke forstå hver linje endnu — læg mærke til de tre kommentarer.

```java
public class Main {
    public static void main(String[] args) {

        int stock = 40;         // DATA: vi husker lagerbeholdningen
        int dailySales = 7;     // DATA: vi husker det daglige salg

        for (int day = 1; day <= 7; day++) {    // REPETITION: gentag for hver dag

            stock = stock - dailySales;

            if (stock < 10) {                   // FORGRENING: er beholdningen lav?
                System.out.println("Dag " + day + ": Lav beholdning! Kun " + stock + " tilbage.");
            } else {
                System.out.println("Dag " + day + ": Beholdning OK. " + stock + " på lager.");
            }
        }
    }
}
```

Data, forgrening og repetition. De næste lektioner zoomer ind på hver del — men de er alle her allerede.

---

## Output med System.out.println()

`System.out.println()` udskriver tekst og værdier til konsollen — vinduet nederst i IntelliJ. Det er nyttigt når du vil forstå hvad der sker inde i programmet:

```java
System.out.println("Hello, world!");
System.out.println("Beholdning: " + stock);
```

Prøv at ændre `dailySales` til et andet tal i programmet ovenfor. Hvad sker der med outputtet?