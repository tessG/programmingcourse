# 02 · Variabler og datatyper

## Du har allerede set variabler

I lektion 1 kørte du dette program:

```java
public class Main {
    public static void main(String[] args) {

        int stock = 40;
        int dailySales = 7;

        for (int day = 1; day <= 7; day++) {
            stock = stock - dailySales;

            if (stock < 10) {
                System.out.println("Dag " + day + ": Lav beholdning! Kun " + stock + " tilbage.");
            } else {
                System.out.println("Dag " + day + ": Beholdning OK. " + stock + " på lager.");
            }
        }
    }
}
```

`stock` og `dailySales` er variabler. Uden dem ville programmet ikke kunne huske beholdningen — og beregningerne ville ikke give mening. I denne lektion zoomer vi ind på hvad variabler er, og hvordan du bruger dem.

---

## Hvad er en variabel?

En variabel er en **navngiven plads i computerens hukommelse**. Du bestemmer hvad der skal stå — og du kan ændre det undervejs.

Tænk på det som en papirsseddel med et navn på. Du kan skrive noget på seddelen, læse hvad der står, og skrive noget nyt over det gamle.

---

## De vigtigste typer

Java skal vide hvilken *slags* data en variabel indeholder. Det erklærer du med en type:

| Type | Hvad gemmer den | Eksempel |
|------|-----------------|---------|
| `int` | Hele tal | `int stock = 40;` |
| `double` | Kommatal | `double price = 99.95;` |
| `String` | Tekst | `String name = "Anna";` |
| `boolean` | Sand/falsk | `boolean isActive = true;` |
| `char` | Ét enkelt tegn | `char status = 'A';` |

---

## Syntaks

```java
type name = value;
```

```java
int stock = 40;
double price = 99.95;
String city = "København";
boolean isActive = true;
char category = 'M';
```

Du kan også erklære en variabel uden at give den en værdi med det samme:

```java
int stock;
stock = 40;
```

---

## Scope — hvor lever en variabel?

En variabel lever kun der hvor den er erklæret. Det kalder vi **scope**.

**Lokal variabel** — erklæret inde i en metode. Den eksisterer kun der:

```java
public static void main(String[] args) {
    int stock = 40;     // lokal — findes kun i main()
    System.out.println(stock);
}
// stock eksisterer ikke her
```

**Variabel i en blok** — erklæret inde i fx en løkke. Den eksisterer kun inden for tuborgklammerne:

```java
for (int day = 1; day <= 7; day++) {
    int remaining = stock - day * 7;  // kun tilgængelig her inde
    System.out.println(remaining);
}
// remaining eksisterer ikke her
```

Scope er en af de mest almindelige årsager til fejl for nye programmører. Hvis IntelliJ siger at en variabel ikke findes, er det ofte et scope-problem.

---

## Variabler ændrer sig over tid

Det er her variabler bliver interessante. I lektion 1-programmet sker dette i hver runde af løkken:

```java
stock = stock - dailySales;
```

Den gamle værdi af `stock` bruges til at beregne den nye. Det er grundopskriften på tæller, saldo, beholdning — alt der ændrer sig over tid.

```java
int balance = 1000;
balance = balance - 200;  // balance er nu 800
balance = balance - 150;  // balance er nu 650
```

---

## System.out.println() — kig ind i dine variabler

`System.out.println()` udskriver til konsollen og er dit vigtigste redskab til at forstå hvad der sker:

```java
int stock = 40;
System.out.println(stock);                       // 40
stock = stock - 7;
System.out.println(stock);                       // 33
System.out.println("Beholdning: " + stock);      // Beholdning: 33
```

Prøv at tilføje en `System.out.println()` inde i løkken i lektion 1-programmet der udskriver `dailySales`. Hvad sker der?

---

## Arrays — en liste af værdier

Indtil nu har hver variabel holdt én værdi. Et **array** holder flere værdier af samme type — i en bestemt rækkefølge.

```java
int[] quantities = {40, 12, 85, 3, 27};
String[] products = {"Kontorstol", "Whiteboard", "Kuglepen"};
```

Du tilgår et element med dets **indeks** — position i listen. Indeks starter ved 0:

```java
System.out.println(quantities[0]);  // 40 — det første element
System.out.println(quantities[2]);  // 85 — det tredje element
System.out.println(products[1]);    // Whiteboard
```

`length` fortæller dig hvor mange elementer der er:

```java
System.out.println(quantities.length);  // 5
```

Du kan også erklære et array med en fast størrelse og fylde det bagefter:

```java
double[] prices = new double[5];  // plads til 5 værdier
prices[0] = 1599.0;
prices[1] = 39.0;
// osv.
```

Arrays er udgangspunktet for alt der handler om *samlinger af data*. I lektion 4 ser vi hvordan løkker og arrays arbejder naturligt sammen.