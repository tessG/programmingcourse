# Øvelser: Variabler og datatyper

Disse øvelser træner syntaks og forståelse. Løs dem én ad gangen — de er korte med vilje.

---

## Øvelse 1 — Tag udgangspunkt i lektion 1-programmet

Åbn programmet fra lektion 1. Tilføj en variabel der styrer hvor mange enheder der sælges pr. dag.  
Giv den en startværdi på 7 — præcis som nu — og prøv derefter at ændre den til 3 og til 15.  
Hvad sker der med outputtet?

---

## Øvelse 2 — Deklarer og udskriv

Opret følgende variabler og udskriv dem alle med `System.out.println()`:

- Dit navn
- Din alder
- Din yndlingspris (et kommatal)
- Om du drikker kaffe (sand/falsk)

---

## Øvelse 3 — Regnestykker med int

```java
int a = 12;
int b = 5;
```

Udskriv resultatet af addition, subtraktion, multiplikation og division.  
Hvad sker der med divisionen? Hvorfor?

---

## Øvelse 4 — int vs double

Lav samme divisionsøvelse som ovenfor, men brug `double` i stedet for `int`.  
Hvad er forskellen i output?

---

## Øvelse 5 — Tekst og tal sammen

Opret en `String` der hedder `city` og en `int` der hedder `population`.  
Udskriv en sætning der kombinerer begge, fx:

```
København har 794000 indbyggere.
```

---

## Øvelse 6 — Opdater en variabel

```java
int balance = 1000;
```

Tilføj tre linjer der trækker henholdsvis 200, 150 og 75 fra `balance`.  
Udskriv `balance` efter hver ændring.

---

## Øvelse 7 — Swap to variabler

```java
String first = "Anna";
String second = "Bo";
```

Byt indholdet af de to variabler så `first` ender med at indeholde `"Bo"` og omvendt.  
*Hint: du får brug for en tredje, midlertidig variabel.*

---

## Øvelse 8 — Beregn og gem

Opret variabler for antal og stykpris på en vare (vælg selv værdier).  
Beregn og gem den samlede lagerværdi i en ny variabel. Udskriv resultatet.

---

## Øvelse 9 — Scope

Kør dette program og læs fejlmeddelelsen i IntelliJ:

```java
public class Main {
    public static void main(String[] args) {
        if (true) {
            int score = 0;
        }
        score = score + 1;
        System.out.println(score);
    }
}
```

Hvad er problemet? Ret koden så den virker.

---

## Øvelse 10 — Løbende total

Opret en variabel `total` med værdien 0.  
Skriv fire linjer der lægger henholdsvis 500, 1200, 75 og 330 til `total` — én ad gangen.  
Udskriv `total` efter hver tilføjelse.

Prøv derefter at pakke det ind i en løkke med et array af beløb:

```java
int[] amounts = {500, 1200, 75, 330};
```

Hvad er fordelen ved det?

---

## Øvelse 11 — Navngivning

Nedenstående kode virker — men variabelnavnene er dårlige.  
Omdøb dem så koden bliver lettere at forstå:

```java
int a = 1920;
int b = 1080;
double c = (double) a / b;
System.out.println(c);
```

---

## Øvelse 12 — Fejlsøgning

Download filen og ret fejlene direkte i IntelliJ:

[⬇ VariableFejl.java](VariableFejl.java)

Der er 8 fejl — nogle er syntaksfejl der forhindrer koden i at kompilere, andre er logiske fejl hvor koden kører men opfører sig forkert. Ret én fejl ad gangen og kør efter hver rettelse.
