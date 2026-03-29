// ØVELSE: Find og ret fejlene
// Der er 8 fejl i denne sketch — nogle er syntaksfejl, andre er logiske fejl.
// Kør sketchen, læs fejlmeddelelserne, og ret én fejl ad gangen.

// GLOBALE VARIABLE
int score = "100";        // fejl 1
float speed = 2;
String playerName = Anna; // fejl 2
boolean gameOver = false;

void setup() {
  size(400, 400);
}

void draw() {
  background(30);

  // Flyt cirklen
  float x = 200;          // fejl 3: x skal huske sin position mellem frames
  x = x + speed;

  // Vis cirklen
  ellipse(x, 200, 60, 60);

  // Tæl frames op
  score = score + 1;

  // Stop når score når 100
  if (score = 100) {      // fejl 4
    gameOver = true;
  }

  // Vis score
  println("Score: " + score);

  // Beregn og vis en rabat
  float price = 200.0;
  float discount = 25;    // fejl 5: rabat er 25% — hvad skal typen og værdien være?
  float finalPrice = price - discount;
  println("Pris efter rabat: " + finalPrice);  // forventer 150.0 — hvad sker der?

  // Byt to værdier
  String first = "rød";
  String second = "blå";
  first = second;         // fejl 6 og 7: swap er ikke lavet korrekt
  second = first;
  println(first + " / " + second);  // forventer: blå / rød

  // Brug vinduets dimensioner
  float center = width / 2;  // fejl 8: hvad sker der med resultatet her — og hvorfor?
  println("Centrum: " + center);
}
