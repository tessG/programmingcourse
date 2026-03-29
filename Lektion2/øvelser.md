# 02 · Øvelser: Variabler og datatyper

Disse øvelser træner syntaks. Løs dem én ad gangen — de er korte med vilje.

---

## Øvelse 1 — Deklarer og udskriv

Opret følgende variabler og udskriv dem alle med `println()`:

- Dit navn
- Din alder
- Din (et kommatal)
- Om du drikker kaffe (sand/falsk)

---

## Øvelse 2 — Regnestykker med int

```java
int a = 12;
int b = 5;
```

Udskriv resultatet af addition, subtraktion, multiplikation og division.  
Hvad sker der med divisionen? Hvorfor?

---

## Øvelse 3 — int vs float

Lav samme divisionsøvelse som ovenfor, men brug `float` i stedet for `int`.  
Hvad er forskellen i output?

---

## Øvelse 4 — Tekst og tal sammen

Opret en `String` der hedder `city` og en `int` der hedder `population`.  
Udskriv en sætning der kombinerer begge, fx:

```
København har 794000 indbyggere.
```

---

## Øvelse 5 — Opdater en variabel

```java
int score = 0;
```

Tilføj tre linjer der øger `score` med henholdsvis 10, 25 og 5.  
Udskriv `score` efter hver ændring.

---

## Øvelse 6 — Swap to variabler

```java
String first = "Anna";
String second = "Bo";
```

Byt indholdet af de to variabler, så `first` ender med at indeholde `"Bo"` og omvendt.  
*Hint: du får brug for en tredje, midlertidig variabel.*

---

## Øvelse 7 — Beregn og gem

Opret variabler for bredde og højde på et rektangel (vælg selv værdier).  
Beregn og gem arealet i en ny variabel. Udskriv arealet.

---

## Øvelse 8 — Brug width og height

```java
void setup() {
  size(400, 300);
  println(width);
  println(height);
}
```

Kør koden. Hvad udskrives?  
Tilføj en linje der udskriver arealet af vinduet.

---

## Øvelse 9 — Tegn med variabler

Opret variabler for `x`, `y` og `diameter`.  
Brug dem til at tegne en cirkel med `ellipse()`.  
Skift derefter værdierne og se at cirklen flytter sig.

---

## Øvelse 10 — Float og afrunding

```java
float price = 49.95;
float discount = 0.2;
```

Beregn og udskriv den rabatterede pris.  
Beregn og udskriv hvad rabatten sparer kunden (i kr.).

---

## Øvelse 11 — Navngivning

Nedenstående kode virker — men variabelnavnene er dårlige.  
Omdøb dem så koden bliver lettere at forstå:

```java
int a = 1920;
int b = 1080;
float c = (float) a / b;
println(c);
```

---

## Øvelse 12 — Fejlsøgning

Nedenstående kode indeholder tre fejl. Find og ret dem:

```java
int score = "100";
float pi = 3,14;
String greeting = Hello;
println(score + " point");
```