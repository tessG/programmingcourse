# 05 · Funktioner — genbrug og overskuelighed

## Problemet med copy-paste

Forestil dig at du skal beregne rabatpriser for ti produkter. Du kunne skrive beregningen ti gange — men hvad nu hvis reglen ændrer sig? Så skal du rette ti steder.

En funktion løser det: du skriver beregningen én gang, giver den et navn, og *kalder* den så mange gange du har brug for.

---

## Et nyt program — tre funktioner, ét program

```java
void setup() {
  // beregn rabatpris
  println(discountedPrice(200.0, 0.2));   // 160.0
  println(discountedPrice(450.0, 0.1));   // 405.0
  println(discountedPrice(89.0, 0.25));   // 66.75

  // formater en hilsen
  println(greet("Anna"));    // Hej, Anna! Velkommen.
  println(greet("Bo"));      // Hej, Bo! Velkommen.

  // tjek om et tal er lige
  println(isEven(4));    // true
  println(isEven(7));    // false
  println(isEven(100));  // true
}

// FUNKTION 1: beregn pris efter rabat
float discountedPrice(float price, float discount) {
  return price - (price * discount);
}

// FUNKTION 2: byg en hilsensbesked
String greet(String name) {
  return "Hej, " + name + "! Velkommen.";
}

// FUNKTION 3: afgør om et tal er lige
boolean isEven(int number) {
  return number % 2 == 0;
}
```

Samme funktion, forskelligt input — forskelligt output. Ingen copy-paste.

---

## Hvad er en funktion?

En funktion er en **navngiven blok kode** der kan kaldes fra andre steder i programmet. Du kender allerede `setup()`, `draw()` og `println()` — de er alle funktioner.

En funktion kan:
- tage **parametre** som input
- **returnere** en værdi som output
- eller blot *gøre noget* uden at returnere noget (`void`)

---

## Syntaks

```java
returtype navn(parametertype parameter) {
  // kode
  return værdi;
}
```

```java
// funktion der returnerer en float
float area(float width, float height) {
  return width * height;
}

// funktion der returnerer en String
String fullName(String first, String last) {
  return first + " " + last;
}

// funktion der ikke returnerer noget
void printDivider() {
  println("-------------------");
}
```

---

## Parametre og argumenter

**Parametre** er de variabler funktionen modtager — de erklæres i parentesen.  
**Argumenter** er de konkrete værdier du sender ind når du kalder funktionen.

```java
// price og discount er parametre
float discountedPrice(float price, float discount) {
  return price - (price * discount);
}

// 200.0 og 0.2 er argumenter
println(discountedPrice(200.0, 0.2));
```

---

## Returværdi

`return` afslutter funktionen og sender en værdi tilbage til det sted den blev kaldt fra. Returtypen i signaturen skal matche det du returnerer.

```java
boolean isEven(int number) {
  return number % 2 == 0;  // returnerer true eller false
}

boolean result = isEven(4);
println(result);  // true
```

Funktioner med `void` returnerer ingenting — de udfører bare en handling:

```java
void printDivider() {
  println("-------------------");
  // ingen return
}
```

---

## Scope i funktioner

Variabler du erklærer inde i en funktion eksisterer kun der — præcis som du lærte i lektion 2:

```java
float discountedPrice(float price, float discount) {
  float saving = price * discount;  // lokal — findes kun her
  return price - saving;
}
// saving eksisterer ikke her
```

---

## Hvornår laver du en funktion?

Et godt tommelfingerregel: **hvis du skriver den samme kode mere end én gang, lav en funktion.**

Men funktioner handler også om *læsbarhed*. En `setup()` der kalder `loadData()`, `buildMenu()` og `drawBackground()` er langt lettere at forstå end én der indeholder al koden direkte.
