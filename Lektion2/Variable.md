# 02 · Variabler og datatyper

## Du har allerede set variabler

I lektion 1 kørte du dette program:

```java
float x = 200;
float speed = 2;

void setup() {
  size(400, 400);
}

void draw() {
  background(30);
  x = x + speed;
  if (x > width) {
    x = 0;
  }
  ellipse(x, 200, 60, 60);
}
```

`x` og `speed` er variabler. Uden dem ville programmet ikke kunne huske hvor cirklen er — og den ville aldrig bevæge sig. I denne lektion zoomer vi ind på hvad variabler er, og hvordan du bruger dem.

---

## Hvad er en variabel?

En variabel er en **navngiven plads i computerens hukommelse**. Du bestemmer hvad der skal stå — og du kan ændre det undervejs.

Tænk på det som en papirsseddel med et navn på. Du kan skrive noget på seddelen, læse hvad der står, og skrive noget nyt over det gamle.

---

## De vigtigste typer

Processing skal vide hvilken *slags* data en variabel indeholder. Det erklærer du med en type:

| Type | Hvad gemmer den | Eksempel |
|------|-----------------|---------|
| `int` | Hele tal | `int score = 0;` |
| `float` | Kommatal | `float speed = 1.5;` |
| `String` | Tekst | `String name = "Anna";` |
| `boolean` | Sand/falsk | `boolean gameOver = false;` |

---

## Syntaks

```java
type name = value;
```

```java
int score = 0;
float speed = 1.5;
String city = "København";
boolean gameOver = false;
```

Du kan også erklære en variabel uden at give den en værdi med det samme:

```java
int score;
score = 10;
```

---

## Scope — hvor lever en variabel?

En variabel lever kun der hvor den er erklæret. Det kalder vi **scope**.

**Global variabel** — erklæret uden for alle metoder. Den er tilgængelig overalt i programmet:

```java
float x = 200;  // global — kan bruges i både setup() og draw()

void setup() {
  size(400, 400);
}

void draw() {
  ellipse(x, 200, 60, 60);  // virker!
}
```

**Lokal variabel** — erklæret inde i en metode. Den eksisterer kun der:

```java
void draw() {
  float temp = 36.6;  // lokal — findes kun i draw()
  println(temp);
}
// temp eksisterer ikke her
```

I lektion 1-programmet er `x` og `speed` globale — de skal huskes fra frame til frame. Var de lokale i `draw()`, ville de nulstilles 60 gange i sekundet.

---

## Variabler ændrer sig over tid

Det er her variabler bliver interessante. I lektion 1-programmet sker dette i hver frame:

```java
x = x + speed;
```

Den gamle værdi af `x` bruges til at beregne den nye. Det er grundopskriften på animation, tæller, score — alt der ændrer sig over tid.

```java
int score = 0;
score = score + 10;  // score er nu 10
score = score + 10;  // score er nu 20
```

---

## Processings indbyggede variabler

Processing stiller selv nogle variabler til rådighed fra starten:

| Variabel | Hvad den indeholder |
|----------|---------------------|
| `width` | Vinduets bredde |
| `height` | Vinduets højde |
| `mouseX` | Musens x-position |
| `mouseY` | Musens y-position |
| `frameCount` | Antal frames siden start |

Du så `width` i lektion 1-programmet: `if (x > width)`. I stedet for at hardkode `400` bruger vi `width` — så virker betingelsen uanset vinduets størrelse.

---

## println() — kig ind i dine variabler

`println()` udskriver til konsollen og er dit vigtigste redskab til at forstå hvad der sker:

```java
int score = 0;
println(score);                // 0
score = score + 10;
println(score);                // 10
println("Score er: " + score); // Score er: 10
```

Prøv at tilføje `println(x)` inde i `draw()` i lektion 1-programmet. Du vil se `x` vokse for hver frame — og nulstille sig når cirklen når kanten.

## Arrays — en liste af værdier

Indtil nu har hver variabel holdt én værdi. Et **array** holder flere værdier af samme type — i en bestemt rækkefølge.

```java
int[] scores = {10, 25, 8, 42, 17};
String[] cities = {"København", "Aarhus", "Odense"};
```

Du tilgår et element med dets **indeks** — position i listen. Indeks starter ved 0:

```java
println(scores[0]);  // 10 — det første element
println(scores[2]);  // 8  — det tredje element
println(cities[1]);  // Aarhus
```

`length` fortæller dig hvor mange elementer der er:

```java
println(scores.length);  // 5
```

Du kan også erklære et array med en fast størrelse og fylde det bagefter:

```java
float[] temperatures = new float[7];  // plads til 7 værdier
temperatures[0] = 12.5;
temperatures[1] = 14.0;
// osv.
```

Arrays er udgangspunktet for alt der handler om *samlinger af data*. I lektion 4 ser vi hvordan løkker og arrays arbejder naturligt sammen.