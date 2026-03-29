# 04 · Loops og lister

## Du har allerede brugt et loop 

I lektion 3 brugte du `for` til at tegne 50 cirkler på tilfældige steder. Loop'et vidste ikke noget om cirklerne — den talte bare fra 0 til 49 og lod `random()` bestemme resten.

Men hvad nu hvis du har *konkrete data* du vil løbe igennem? Fx en liste af størrelser, navne eller priser? Så er loop'et og arrayet et naturligt par.

---

## Et nyt program — samme data, tre loops

Kør dette program. Det tegner det samme mønster tre gange — med tre forskellige loops.

```java
float[] sizes = {20, 45, 70, 35, 90, 55, 30, 80};
int margin = 60;
int spacing = 65;

void setup() {
  size(600, 300);
  background(30);
  noLoop();
}

void draw() {

  // FOR-I: klassisk tæller — du styrer indekset selv
  for (int i = 0; i < sizes.length; i++) {
    fill(100, 180, 240);
    ellipse(margin + i * spacing, 75, sizes[i], sizes[i]);
  }

  // FOR-EACH: læs hvert element — ingen tæller
  int x = margin;
  for (float s : sizes) {
    fill(240, 160, 80);
    ellipse(x, 150, s, s);
    x += spacing;
  }

  // WHILE: kør så længe en betingelse er sand
  int i = 0;
  while (i < sizes.length) {
    fill(120, 210, 140);
    ellipse(margin + i * spacing, 225, sizes[i], sizes[i]);
    i++;
  }
}
```

Alle tre rækker tegner det samme. Forskellen er *hvordan* de bevæger sig gennem arrayet.

---

## for-i loop

Det klassiske loop. Du har en tæller `i` du selv styrer — og du kan bruge den til at beregne position, tilgå indeks og meget andet:

```java
for (int i = 0; i < sizes.length; i++) {
  println(i + ": " + sizes[i]);
}
```

Brug `for-i` når du har brug for indekset, eller når du vil springe elementer over, gå baglæns osv.

---

## for-each loop

Når du bare vil have *hvert element* uden at bekymre dig om indeks:

```java
for (float s : sizes) {
  println(s);
}
```

Læs det som: *"for hvert element `s` i `sizes`"*. Renere og kortere — men du har ikke adgang til `i`.

Brug `for-each` når du blot vil læse eller behandle hvert element i rækkefølge.

---

## while loop

Kører så længe en betingelse er sand. Den er mere fleksibel end `for` — men kræver at du selv husker at opdatere tælleren:

```java
int i = 0;
while (i < sizes.length) {
  println(sizes[i]);
  i++;  // glem ikke denne — ellers kører loop'et for evigt
}
```

Brug `while` når du ikke på forhånd ved hvor mange gange loop'et skal køre — fx når du læser fra en fil eller venter på input.

---

## Hvornår bruger du hvilken?

| Situation | Loop type  |
|-----------|------------|
| Du kender antal gentagelser og/eller bruger indekset | `for-i`    |
| Du vil læse hvert element i en liste | `for-each` |
| Du kører indtil en betingelse holder op med at være sand | `while`    |

---

## ArrayList — en liste der vokser

Et almindeligt array har fast størrelse. En `ArrayList` kan vokse og skrumpe:

```java
ArrayList<String> names = new ArrayList<String>();
names.add("Anna");
names.add("Bo");
names.add("Carla");

println(names.size());   // 3
println(names.get(0));   // Anna
names.remove(1);         // fjern "Bo"
println(names.size());   // 2
```

`for-each` virker direkte på `ArrayList`:

```java
for (String name : names) {
  println(name);
}
```

Brug `ArrayList` når du ikke ved på forhånd hvor mange elementer du får — fx når du indlæser data fra en fil.
