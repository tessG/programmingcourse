# 03 · Betingelser

## Du har allerede set begge dele

I lektion 1-programmet så du dette:

```java
x = x + speed;    // gentagelse — sker i hver frame

if (x > width) {  // beslutning — er cirklen gået for langt?
  x = 0;
}
```

`draw()` er en implicit gentagelse — Processing kalder den for dig. 
Men hvad nu hvis du vil gentage noget *inde i* en enkelt frame? Og hvad nu hvis du vil træffe en beslutning for *hvert element* du tegner?

Det er det denne lektion handler om.

---

## Et nyt program — alle ideer på én gang

Kør dette program. En masse cirkler tegnes på tilfældige steder. Store cirkler er røde, små er hvide.

```java
int antal = 50;
float graense = 60;  // cirkler over denne størrelse skifter farve

void setup() {
  size(600, 400);
  background(30);
  noLoop();          // draw() kører kun én gang
}

void draw() {
  for (int i = 0; i < antal; i++) {   // GENTAGELSE: kør 50 gange
    float x = random(width);
    float y = random(height);
    float diameter = random(10, 120);

    if (diameter > graense) {         // BESLUTNING: er cirklen stor nok?
      fill(220, 60, 60);              // rød
    } else {
      fill(240);                      // hvid
    }

    ellipse(x, y, diameter, diameter);
  }
}
```

Prøv at ændre `antal` og `graense` — se hvad der sker. Det er de to variabler der styrer hele programmets adfærd.

---

## Betingelser — if, else if, else

En betingelse er en beslutning. Programmet tjekker om noget er sandt — og handler derefter.

```java
if (betingelse) {
  // kører hvis betingelsen er sand
} else if (anden betingelse) {
  // kører hvis den første er falsk, men denne er sand
} else {
  // kører hvis ingen af de andre er sande
}
```

### Sammenligningsoperatorer

| Operator | Betyder |
|----------|---------|
| `==` | er lig med |
| `!=` | er ikke lig med |
| `>` | større end |
| `<` | mindre end |
| `>=` | større end eller lig med |
| `<=` | mindre end eller lig med |

### Sammensatte betingelser

```java
if (x > 100 && x < 300) {  // && betyder OG — begge skal være sande
  fill(255, 0, 0);
}

if (diameter < 20 || diameter > 100) {  // || betyder ELLER — én skal være sand
  fill(0, 255, 0);
}
```

---

## Løkker — for

En `for`-løkke gentager en blok kode et bestemt antal gange.

```java
for (int i = 0; i < 10; i++) {
  println(i);  // udskriver 0, 1, 2 ... 9
}
```

De tre dele i parentesen:

| Del | Hvad den gør |
|-----|--------------|
| `int i = 0` | Start: opret tæller, sæt til 0 |
| `i < 10` | Fortsæt så længe dette er sandt |
| `i++` | Efter hver gentagelse: øg `i` med 1 |

`i` er tilgængelig inde i løkken og kan bruges til beregninger:

```java
for (int i = 0; i < 5; i++) {
  ellipse(i * 80 + 40, 200, 50, 50);  // 5 cirkler på række
}
```

---

## random()

`random(min, max)` returnerer et tilfældigt kommatal mellem `min` og `max`. Det er en Processing-funktion du allerede brugte i grand tour-programmet:

```java
float x = random(width);        // et tal mellem 0 og vinduets bredde
float d = random(10, 120);      // et tal mellem 10 og 120
```

---

## noLoop() og redraw()

Som standard kalder Processing `draw()` 60 gange i sekundet. `noLoop()` stopper det — `draw()` kører kun én gang. Det giver mening når resultatet ikke skal animeres.

```java
void setup() {
  size(600, 400);
  noLoop();  // tegn én gang, stop
}
```

Vil du tegne igen — fx når brugeren trykker på en tast — kan du kalde `redraw()`.