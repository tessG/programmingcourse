# Lager System

> Du bygger et lagerstyringsystem til et tekstbaseret system. Byg systemet bag kulissen: varer med beholdning, priser og genbestillings-mekanik.

---

## Fagligt udbytte

Når du har gennemført alle iterationer, kan du:

- Erklære og bruge variable med korrekte datatyper
- Anvende kontrolstrukturer til at træffe beslutninger og gentage handlinger
- Skrive og kalde metoder med og uden returværdi
- Oprette klasser med felter og metoder og instansiere objekter

## Formål

Denne opgave giver dig en rød tråd gennem semestret. Du starter med simpel kode og omstrukturerer den løbende, efterhånden som du lærer nye koncepter.

Det er meningen at din kode bliver "rodet" undervejs – det er en del af læringen.
Du vil opleve *hvorfor* metoder og objekter gør koden bedre, fordi du først har prøvet at skrive det uden.

Gem en kopi af din kode efter hver iteration, så du kan se din progression.
Beskriv din progression i tekst, og vedlæg denne når du afleverer opgaven.

---

## Om systemet

Du bygger kernen i et lagerstyringsystem. Tænk på det som det der kører bag kulissen i en butik, et lager eller en webshop – et system der holder styr på varer, beholdning og priser.

**Kernekoncepter:**
- **Antal** er din vigtigste ressource – løber det tør, kan du ikke sælge
- **Minimumsbeholdning** er grænsen for hvornår en vare skal genbestilles
- **Pris** bestemmer varens værdi og påvirker omsætningen
- **Kategori** bruges til at sortere og filtrere varesortimentet

---

## Iteration 1: Variable

*Forudsætter at du har lært om variable, operatorer, navngivning og arrays*

### Krav

Erklær variable der beskriver én vare:

| Data | Type | Eksempel |
|------|------|---------|
| Varenavn | String | "Ergonomisk kontorstol" |
| Varenummer | String | "STL-4421" |
| Antal på lager | int | 47 |
| Minimumsbeholdning | int | 10 |
| Indkøbspris (kr.) | double | 899.0 |
| Salgspris (kr.) | double | 1599.0 |
| Er aktiv | boolean | true |
| Kategori | char | 'M' (Møbler), 'E' (Elektronik), 'K' (Kontorartikler), 'R' (Rengøring) |

Erklær også et array med 2–4 leverandørnavne der kan levere denne vare (String[]).

Udskriv alle varens data i et læsbart format.

### Forventet output (eksempel)

```
=== VARE: Ergonomisk kontorstol ===
Varenummer: STL-4421
Kategori: M
Antal på lager: 47
Minimumsbeholdning: 10
Indkøbspris: 899,00 kr.
Salgspris: 1599,00 kr.
Avance: 700,00 kr.
Aktiv: true

Leverandører (2):
- OfficeDepot
- Staples
```

### Udfordring (valgfri)

Opret to varer og udskriv begge.

---

### Refleksion

1. Hvad var svært?
2. Hvad ville du gøre anderledes hvis du startede forfra?
3. Hvilke datatyper var du i tvivl om – og hvorfor valgte du som du gjorde?
4. Hvad mangler systemet for at føles "rigtigt"?

---

## Iteration 2: Kontrolstrukturer

*Forudsætter: betingelser og loops*

### Nye krav

Tilføj logik til dit lagersystem:

**Beholdningskontrol:**
- Hvis antal er under minimumsbeholdning, udskriv `"ADVARSEL: Lav beholdning – genbestilling anbefales!"`
- Hvis antal er 0, sæt `isActive` til false og udskriv `"Varen er udsolgt og sat som inaktiv."`
- Udskriv hvor mange enheder der er over minimumsbeholdningen (bufferen)

**Avanceberegning:**
- Beregn og udskriv avance i kr. og i procent
- Hvis avancen er under 20%, udskriv `"OBS: Lav avance – overvej prisjustering"`

**Kategoribeskrivelse:**
- Udskriv en beskrivende tekst baseret på kategori ('M', 'E', 'K', 'R')

**Leverandørliste:**
- Brug et loop til at udskrive alle leverandører med nummerering
- Udskriv det samlede antal leverandører

**Simpel "salg"-simulation:**
- Erklær en variabel `dailySales` (fx 3 – solgte enheder pr. dag)
- Beregn og udskriv hvor mange dage lageret holder med det nuværende salg
- Udskriv hvornår genbestilling senest bør ske (dage til minimumsbeholdningen nås)

### Forventet output (eksempel)

```
=== LAGERSTATUS: Ergonomisk kontorstol ===
Antal: 47 | Minimum: 10 | Buffer: 37 enheder
Salgspris: 1599,00 kr. | Avance: 700,00 kr. (43,8%)
Kategori: Møbler

Leverandører:
  1. OfficeDepot
  2. Staples

Dagligt salg: 3 enheder
Lager holder: 15 dage
Genbestil inden: 12 dage
```

### Udfordring (valgfri)

Beregn den samlede lagerværdi (antal × indkøbspris) og den potentielle omsætning hvis alt sælges (antal × salgspris).

---

### Refleksion

1. Hvad var svært?
2. Hvad ville du gøre anderledes hvis du startede forfra?
3. Hvordan har betingelser og loops gjort din kode mere nyttig?
4. Hvad ville du gerne tilføje til dit system?

---

## Iteration 3: Metoder

*Forudsætter: metoder med og uden returværdi, parameterlister*

### Nye krav

Omstrukturér din kode så logikken ligger i metoder:

| Metode | Beskrivelse |
|--------|-------------|
| `printItemProfile()` | Udskriver alle varens data |
| `getMargin()` | Returnerer avance i kr. som double |
| `getMarginPercent()` | Returnerer avanceprocent som double |
| `isLowStock()` | Returnerer true hvis antal < minimumsbeholdning |
| `sell(int amount)` | Reducerer antal, checker om udsolgt |
| `restock(int amount)` | Øger antal på lager |
| `adjustPrice(double newPrice)` | Opdaterer salgspris |
| `daysUntilReorder(int dailySales)` | Returnerer dage til genbestilling som int |

Din `main`-metode skal kun kalde disse metoder – al logik skal ud af `main`.

### Forventet output (eksempel)

```java
printItemProfile();
sell(5);
restock(20);
adjustPrice(1699.0);
printItemProfile();
```

```
=== VARE: Ergonomisk kontorstol ===
[... samme som Iteration 1 ...]

Sælger 5 enheder. Nyt antal: 42
Genbestiller 20 enheder. Nyt antal: 62
Salgspris justeret: 1699,00 kr. Ny avance: 800,00 kr. (47,1%)

=== VARE: Ergonomisk kontorstol ===
Antal på lager: 62
Salgspris: 1699,00 kr.
[...]
```

### Udfordring (valgfri)

Lav en metode `addSupplier(String name)` der tilføjer en leverandør til arrayet, og en metode `printSuppliers()` der udskriver dem alle.

---

### Refleksion

1. Hvad var svært?
2. Hvad ville du gøre anderledes hvis du startede forfra?
3. Hvordan har metoder ændret din kodes struktur?
4. Hvad ville du gerne tilføje?

---

## Iteration 4: Objekter

*Forudsætter: klasser, felter, konstruktør, instansiering*

### Nye krav

Omskriv dit system til en klasse:

```java
public class Item {
    // felter
    // konstruktør
    // metoder fra Iteration 3
}
```

Opret mindst to varer i `main` og demonstrér at de er uafhængige af hinanden.

### Forventet output (eksempel)

```java
Item i1 = new Item("Ergonomisk kontorstol", "STL-4421", 47, 10, 899.0, 1599.0, 'M');
Item i2 = new Item("Whiteboard A4", "WB-0091", 6, 15, 12.0, 39.0, 'K');

i1.sell(5);
i2.restock(30);

i1.printItemProfile();
i2.printItemProfile();
```

```
=== VARE: Ergonomisk kontorstol ===
Varenummer: STL-4421
Kategori: Møbler
Antal: 42 | Minimum: 10
Salgspris: 1599,00 kr. | Avance: 43,8%

=== VARE: Whiteboard A4 ===
Varenummer: WB-0091
Kategori: Kontorartikler
Antal: 36 | Minimum: 15
Salgspris: 39,00 kr. | Avance: 69,2%
```

### Udfordring (valgfri)

- Lav en `Supplier`-klasse med felterne `name` (String), `leadTimeDays` (int) og `minOrderQuantity` (int)
- Erstat dit `String[]` suppliers med et `Supplier[]`
- Tilføj en metode `getFastestSupplier()` der returnerer leverandøren med den korteste leveringstid
- Lav en metode `canFulfillOrder(int quantity)` der checker om en leverandør kan levere nok

---

### Refleksion

1. Hvad var svært?
2. Hvad ville du gøre anderledes hvis du startede forfra?
3. Hvordan har klasser ændret måden du tænker om kode?
4. Hvad ville det kræve at gøre dette til et rigtigt system?
