// ØVELSE: Find og ret fejlene
// Der er 8 fejl i denne sketch — nogle er syntaksfejl, andre er logiske fejl.
// Kør sketchen, læs fejlmeddelelserne, og ret én fejl ad gangen.

float[] sizes = {20, 45, 70, 35, 90, 55, 30, 80};
ArrayList<String> names = new ArrayList<String>();

void setup() {
  size(600, 400);
  background(30);
  noLoop();

  names.add("Anna");
  names.add("Bo");
  names.add("Carla");
}

void draw() {

  // Fejl 1: løkken går ét element for langt
  for (int i = 0; i <= sizes.length; i++) {
    println(sizes[i]);
  }

  // Fejl 2: for-each bruger forkert type
  for (int s : sizes) {
    println(s);
  }

  // Fejl 3: while-løkken kører for evigt
  int i = 0;
  while (i < sizes.length) {
    println(sizes[i]);
    // mangler noget her
  }

  // Fejl 4: cirklerne tegnes alle samme sted — x opdateres ikke rigtigt
  int x = 40;
  for (float s : sizes) {
    ellipse(x, 100, s, s);
  }

  // Fejl 5: logisk fejl — skal summere alle størrelser, men resultatet er altid 0
  float total = 0;
  for (int j = 0; j < sizes.length; j++) {
    total = sizes[j];  // hvad mangler her?
  }
  println("Total: " + total);

  // Fejl 6: ArrayList — forkert metode til at hente størrelse
  println("Antal navne: " + names.length);

  // Fejl 7: ArrayList — forkert metode til at hente element
  println("Første navn: " + names[0]);

  // Fejl 8: logisk fejl — løkken tegner cirklerne i forkert rækkefølge (baglæns)
  for (int k = 0; k < sizes.length; k++) {
    float s = sizes[sizes.length - k];  // tæt på — men hvad er galt?
    ellipse(40 + k * 65, 300, s, s);
  }
}
