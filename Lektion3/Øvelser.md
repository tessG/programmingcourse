# 03 · Øvelser: Betingelser og gentagelse

---

## Øvelse 1 — Udvid grand tour-programmet

Tag programmet fra denne lektion. Tilføj en tredje kategori: cirkler der er *meget* store (vælg selv grænsen) skal tegnes med en tredje farve.

*Hint: du får brug for `else if`.*

---

## Øvelse 2 — Simpel betingelse

```java
int temperature = 22;
```

Skriv en betingelse der udskriver:
- `"Koldt"` hvis temperaturen er under 10
- `"Behageligt"` hvis den er mellem 10 og 25
- `"Varmt"` hvis den er over 25

Test med forskellige værdier af `temperature`.

---

## Øvelse 3 — Sammensat betingelse

```java
int hour = 14;
boolean isWeekend = false;
```

Udskriv `"Åbent"` hvis det er hverdag OG klokken er mellem 9 og 17. Ellers udskriv `"Lukket"`.

---

## Øvelse 4 — Tæl med en løkke

Skriv en løkke der udskriver tallene 1 til 20.  
Udvid den så den kun udskriver *ulige* tal.  
*Hint: brug `%` (modulo) — `i % 2` giver resten ved division med 2.*

---

## Øvelse 5 — Løkke med beregning

Skriv en løkke der udskriver tabellen for 7 — fra 7 × 1 til 7 × 10:

```
7 x 1 = 7
7 x 2 = 14
...
```

---

## Øvelse 6 — Cirkler på række

Skriv en løkke der tegner 8 cirkler vandret på midten af vinduet med lige stor afstand imellem.  
Brug `width` og antallet af cirkler til at beregne afstanden.

---

## Øvelse 7 — Farve baseret på position

Tegn 10 cirkler på række. Cirkler i venstre halvdel af vinduet skal være blå, cirkler i højre halvdel røde.

---

## Øvelse 8 — random() og betingelse

Generer 100 tilfældige tal mellem 0 og 100 med `random()`.  
Tæl hvor mange der er over 50 — udskriv resultatet til konsollen.

---

## Øvelse 9 — Løkke inde i løkke

Skriv en løkke inde i en løkke der tegner et gitter af cirkler — fx 6 kolonner og 4 rækker.  
Brug de to tællevariabler til at beregne positionen.

---

## Øvelse 10 — noLoop() og redraw()

Tag grand tour-programmet fra denne lektion.  
Tilføj en `mousePressed()`-funktion der kalder `redraw()` — så der tegnes et nyt sæt cirkler hver gang man klikker:

```java
void mousePressed() {
  background(30);
  redraw();
}
```

---

## Øvelse 11 — Fejlsøgning

Download sketchen og ret fejlene direkte i Processing:

[⬇ betingelser_fejl.pde](betingelser_fejl/betingelser_fejl.pde)

Der er 8 fejl — nogle er syntaksfejl, andre er logiske fejl. Ret én fejl ad gangen og kør efter hver rettelse.
