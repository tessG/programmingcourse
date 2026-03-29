# Øvelser: Variabler og datatyper

Disse øvelser træner syntaks og forståelse. Løs dem én ad gangen — de er korte med vilje.

---

## Øvelse 1 — Tag udgangspunkt i lektion 1-programmet

Åbn programmet fra lektion 1. Tilføj en variabel der styrer cirklens størrelse.  
Giv den en startværdi og lad den vokse lidt for hver frame — ligesom `x` gør.

---

## Øvelse 2 — Deklarer og udskriv

Opret følgende variabler og udskriv dem alle med `println()`:

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

## Øvelse 4 — int vs float

Lav samme divisionsøvelse som ovenfor, men brug `float` i stedet for `int`.  
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
int score = 0;
```

Tilføj tre linjer der øger `score` med henholdsvis 10, 25 og 5.  
Udskriv `score` efter hver ændring.

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

Opret variabler for bredde og højde på et rektangel (vælg selv værdier).  
Beregn og gem arealet i en ny variabel. Udskriv arealet.

---

## Øvelse 9 — Scope

Kør dette program og læs fejlmeddelelsen:

```java
void setup() {
  size(400, 400);
  int score = 0;
}

void draw() {
  score = score + 1;
  println(score);
}
```

Hvad er problemet? Ret koden så den virker.

---

## Øvelse 10 — Brug frameCount

`frameCount` er en indbygget variabel der tæller frames siden programmet startede.  
Udskriv den i `draw()`. Hvad ser du?  
Brug den derefter til at beregne hvor mange *sekunder* programmet har kørt — Processing kører som standard 60 frames i sekundet.

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

Download sketchen og ret fejlene direkte i Processing:

[⬇ variable_fejl.pde](variable_fejl/variable_fejl.pde)

Der er 8 fejl — nogle er syntaksfejl der forhindrer koden i at køre, andre er logiske fejl hvor koden kører men opfører sig forkert. Ret én fejl ad gangen og kør efter hver rettelse.
