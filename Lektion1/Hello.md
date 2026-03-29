# 01 · Hvad er programmering — og hvad er Processing?

## Hvad er programmering?

Et program er en samling instruktioner som computeren udfører præcist og hurtigt. Uanset hvilket programmeringssprog du bruger, er alle programmer bygget af de samme tre grundideer:

**Data** — programmet husker ting. En position, et navn, en pris, en farve. Uden data kan et program ikke holde styr på noget som helst.

**Forgrening** — programmet træffer beslutninger. *Hvis* noget er sandt, gør det ene. *Ellers* gør det andet. Det er det der gør programmer dynamiske frem for statiske.

**Repetition** — programmet gentager ting. En animation kører frame for frame. En liste gennemløbes post for post. Computeren er god til at gøre det samme igen og igen — uden at blive træt.

Resten er detaljer.

---

## Processing

Processing er et programmeringssprog og udviklingsmiljø designet til at lære programmering gennem visuelle resultater. Du skriver kode — og ser hvad den gør med det samme.

Processing er bygget oven på Java. Det betyder at Processing-kode i virkeligheden *er* Java-kode — Processing tilføjer bare en række praktiske funktioner til tegning, animation og input, og fjerner noget af den kompleksitet der ellers hører til Java. Når du er komfortabel med Processing, er du allerede tæt på Java.

Download og installer: [processing.org/download](https://processing.org/download)

Når du åbner Processing ser du en simpel editor. Tryk **▶ Run** for at køre dit program.

---

## Koordinatsystemet

Processing tegner i et vindue. Positionen (0, 0) er **øverste venstre hjørne**. X vokser mod højre, Y vokser nedad.

```
(0,0) ──────────► x
  │
  │
  ▼
  y
```

`size(bredde, højde)` bestemmer vinduets størrelse og kaldes i `setup()`.

---

## setup() og draw()

De fleste Processing-programmer er bygget op om to blokke:

```java
void setup() {
  // Kører én gang når programmet starter
}

void draw() {
  // Kører igen og igen — ca. 60 gange i sekundet
}
```

`setup()` bruges til forberedelse. `draw()` bruges til at tegne og opdatere. De to blokke er *metoder* — navngivne pakker af instruktioner. Du vil snart lære at skrive dine egne.

---

## Et helt program — alle tre ideer på én gang

Kør dette program og se hvad der sker. Du behøver ikke forstå hver linje endnu — læg mærke til de tre kommentarer.

```java
float x = 200;      // DATA: vi husker cirklens position
float speed = 2;    // DATA: vi husker hvor hurtigt den bevæger sig

void setup() {
  size(400, 400);
}

void draw() {
  background(30);

  x = x + speed;    // REPETITION: for hver frame rykker cirklen lidt

  if (x > width) {  // FORGRENING: er den gået for langt?
    x = 0;          // så start forfra
  }

  ellipse(x, 200, 60, 60);
}
```

Data, forgrening og repetition. De næste lektioner zoomer ind på hver del — men de er alle her allerede.

---

## Output med println()

`println()` udskriver tekst og værdier til konsollen — vinduet nederst i Processing. Det er nyttigt når du vil forstå hvad der sker inde i programmet:

```java
println("Hello, world!");
println("x er nu: " + x);
```

Prøv at tilføje en `println()` inde i `draw()` i programmet ovenfor. Hvad sker der?