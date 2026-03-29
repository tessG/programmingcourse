# 06 · Øvelser: Objekter og klasser

---

## Øvelse 1 — Udvid BankAccount

Tag klassen fra lektionen. Tilføj:

- Et felt `String accountType` der beskriver kontotypen (fx `"Lønkonto"` eller `"Opsparing"`)
- Opdater konstruktøren så den også tager `accountType` som parameter
- Opdater `status()` så den også viser kontotypen

---

## Øvelse 2 — En ny klasse: Product

Lav en klasse `Product` med felterne `String name`, `float price` og `int stock`.  
Tilføj:
- En konstruktør der sætter alle tre felter
- En metode `sell(int quantity)` der reducerer `stock` — men kun hvis der er nok på lager
- En metode `String info()` der returnerer en beskrivelse af produktet

Opret to produkter i `setup()` og kald metoderne.

---

## Øvelse 3 — ArrayList med objekter

Opret en `ArrayList<Product>` med mindst fire produkter.  
Skriv en løkke der udskriver `info()` for hvert produkt.  
Skriv derefter en løkke der finder og udskriver det dyreste produkt.

---

## Øvelse 4 — Metode der returnerer boolean

Tilføj en metode `boolean isAvailable()` til `Product` der returnerer `true` hvis `stock` er større end 0.  
Brug den i en løkke der kun udskriver produkter der er på lager.

---

## Øvelse 5 — this

Forklar med egne ord hvad `this` gør i konstruktøren nedenfor — og hvad der ville ske hvis du fjernede `this.`:

```java
Product(String name, float price, int stock) {
  this.name  = name;
  this.price = price;
  this.stock = stock;
}
```

---

## Øvelse 6 — To klasser der kender hinanden

Lav en klasse `ShoppingCart` med et felt `ArrayList<Product> items`.  
Tilføj:
- En metode `add(Product p)` der tilføjer et produkt til listen
- En metode `float total()` der beregner og returnerer den samlede pris
- En metode `void receipt()` der udskriver alle produkter og den samlede pris

Opret en kurv i `setup()`, tilføj produkter og kald `receipt()`.

---

## Øvelse 7 — Hvad er forskellen?

Hvad udskrives — og hvorfor?

```java
BankAccount a = new BankAccount("Anna", 1000.0);
BankAccount b = a;

b.deposit(500.0);
println(a.status());
```

*Hint: hvad sker der når du tildeler et objekt til en ny variabel?*

---

## Øvelse 8 — Fejlsøgning

Download sketchen og ret fejlene direkte i Processing:

[⬇ klasser_fejl.pde](klasser_fejl/klasser_fejl.pde)

Der er 8 fejl — nogle er syntaksfejl, andre er logiske fejl. Ret én fejl ad gangen og kør efter hver rettelse.
