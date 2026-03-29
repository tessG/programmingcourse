# 04 · Øvelser: Løkker og lister

---

## Øvelse 1 — Udvid grand tour-programmet

Tag programmet fra denne lektion. Tilføj et fjerde array med farver — én farve per cirkel — og brug farverne i `for-i` løkken:

```java
color[] colors = {color(255, 0, 0), color(0, 255, 0), color(0, 0, 255), ...};
```

*Hint: brug `fill(colors[i])` inde i løkken.*

---

## Øvelse 2 — for-i: summer et array

```java
int[] points = {12, 7, 34, 19, 8, 25, 3};
```

Skriv en `for-i` løkke der summerer alle tallene og udskriver det samlede resultat.

---

## Øvelse 3 — for-each: find det største

Brug samme array som øvelse 2. Skriv en `for-each` løkke der finder og udskriver det største tal.

---

## Øvelse 4 — while: tæl ned

Skriv en `while`-løkke der tæller ned fra 10 til 0 og udskriver hvert tal.

---

## Øvelse 5 — Hvornår hvilken løkke?

Skriv kode der løser disse tre opgaver — vælg selv hvilken løkketype der passer bedst, og skriv en kommentar der forklarer hvorfor:

- Udskriv hvert element i `String[] days = {"Man", "Tir", "Ons", "Tor", "Fre"}`
- Tegn cirkler langs vinduets øverste kant med 50 pixels mellemrum
- Kør indtil et tilfældigt tal rammer over 95 — udskriv hvor mange forsøg det tog

---

## Øvelse 6 — Tegn med et array

```java
float[] heights = {80, 120, 60, 150, 90, 110, 40};
```

Tegn en søjle (rektangel) for hvert element. Bredden er fast, højden kommer fra arrayet. Placer søjlerne jævnt fordelt vandret i vinduet.

---

## Øvelse 7 — ArrayList: byg en liste

Opret en tom `ArrayList<String>`. Tilføj fem byer med `add()`. Udskriv dem alle med en `for-each` løkke. Fjern derefter den anden by og udskriv listen igen.

---

## Øvelse 8 — ArrayList vs array

Hvornår ville du bruge et array, og hvornår en `ArrayList`?  
Skriv to korte eksempler — ét der motiverer array, ét der motiverer `ArrayList` — og forklar valget i en kommentar.

---

## Øvelse 9 — Løkke inde i løkke

```java
String[] groups = {"A", "B", "C"};
String[] members = {"Anna", "Bo", "Carla", "Diana"};
```

Skriv en løkke inde i en løkke der udskriver alle kombinationer:

```
A - Anna
A - Bo
...
C - Diana
```

---

## Øvelse 10 — Fejlsøgning

Download sketchen og ret fejlene direkte i Processing:

[⬇ loops_fejl.pde](loops_fejl/loekker_fejl.pde)

Der er 8 fejl — nogle er syntaksfejl, andre er logiske fejl. Ret én fejl ad gangen og kør efter hver rettelse.
