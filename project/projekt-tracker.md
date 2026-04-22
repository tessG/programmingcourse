# Projekt Tracker

> Du bygger et projektstyringsværktøj til et tekstbaseret system. Byg systemet bag kulissen: projekter med budget, fremskridt og opgave-mekanik.

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

Du bygger kernen i et projektstyringsystem. Tænk på det som et simpelt alternativ til Jira eller Trello – et system der holder styr på projekter, deres økonomi og fremdrift.

**Kernekoncepter:**
- **Budget** er din vigtigste ressource – når det er brugt op, er projektet i problemer
- **Fremdrift** viser hvor langt projektet er kommet (0–100%)
- **Status** afspejler projektets tilstand: aktivt, på hold, afsluttet eller aflyst
- **Opgavelisten** er det konkrete arbejde der skal udføres

---

## Iteration 1: Variable

*Forudsætter at du har lært om variable, operatorer, navngivning og arrays*

### Krav

Erklær variable der beskriver ét projekt:

| Data | Type | Eksempel |
|------|------|---------|
| Projektnavn | String | "CRM Redesign" |
| Kunde | String | "Nordea" |
| Budget (kr.) | double | 85000.0 |
| Forbrug (kr.) | double | 23400.0 |
| Fremdrift (0–100) | int | 35 |
| Teamstørrelse | int | 4 |
| Er aktivt | boolean | true |
| Status | char | 'A' (Active), 'H' (On Hold), 'C' (Completed), 'X' (Cancelled) |

Erklær også et array med 3–5 opgaver der skal løses i projektet (String[]).

Udskriv alle projektets data i et læsbart format.

### Forventet output (eksempel)

```
=== PROJEKT: CRM Redesign ===
Kunde: Nordea
Status: A
Fremdrift: 35%
Budget: 85000,00 kr.
Forbrug: 23400,00 kr.
Restbudget: 61600,00 kr.
Team: 4 personer
Aktivt: true

Opgaver (4):
- Kravspecifikation
- UI mockups
- Backend integration
- Brugertests
```

### Udfordring (valgfri)

Opret to projekter og udskriv begge side om side.

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

Tilføj logik til dit projektsystem:

**Budgetkontrol:**
- Hvis forbrug er over 90% af budget, udskriv `"ADVARSEL: Projektet er ved at løbe tør for budget!"`
- Hvis forbrug overstiger budget, sæt `isActive` til false og udskriv `"Projekt stoppet – budget overskredet."`
- Beregn restbudget og udskriv det

**Fremdriftstjek:**
- Udskriv en statusbesked baseret på fremdrift:
  - 0–25%: `"Opstart – projektet er lige begyndt"`
  - 26–50%: `"Undervejs – god fremgang"`
  - 51–75%: `"På rette spor – mere end halvvejs"`
  - 76–99%: `"Næsten i mål – slutspurt!"`
  - 100%: `"Projektet er afsluttet"`

**Statushåndtering:**
- Udskriv en beskrivende tekst baseret på status ('A', 'H', 'C', 'X')

**Opgaveliste:**
- Brug et loop til at udskrive alle opgaver med nummerering
- Tæl og udskriv det samlede antal opgaver

**Simpel "sprint"-simulation:**
- Erklær en variabel `sprintVelocity` (fx 15 – procentpoint færdiggjort pr. sprint)
- Beregn og udskriv hvor mange sprints der er tilbage til projektet er færdigt
- Hvis fremdrift allerede er 100%, udskriv `"Ingen sprints tilbage – projektet er done!"`

### Forventet output (eksempel)

```
=== PROJEKTSTATUS: CRM Redesign ===
Fremdrift: 35% – Undervejs – god fremgang
Budget: 85000,00 kr. | Forbrug: 23400,00 kr. | Rest: 61600,00 kr.
Status: Aktivt projekt

Opgaver:
  1. Kravspecifikation
  2. UI mockups
  3. Backend integration
  4. Brugertests

Sprint velocity: 15% pr. sprint
Estimerede sprints tilbage: 5
```

### Udfordring (valgfri)

Tilføj et dagligt-forbrugs-estimat: hvis projektet bruger `forbrug / fremdrift` kr. per procent, hvornår løber budgettet så tør?

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
| `printProjectProfile()` | Udskriver alle projektets data |
| `getRemainingBudget()` | Returnerer restbudget som double |
| `isOverBudget()` | Returnerer true hvis forbrug > budget |
| `addExpense(double amount)` | Øger forbrug, checker budget |
| `updateProgress(int percent)` | Sætter fremdrift, max 100 |
| `addTask(String task)` | Tilføjer opgave til arrayet |
| `completeProject()` | Sætter fremdrift til 100 og status til 'C' |
| `getStatusDescription()` | Returnerer statusbeskrivelse som String |

Din `main`-metode skal kun kalde disse metoder – al logik skal ud af `main`.

### Forventet output (eksempel)

```java
printProjectProfile();
addExpense(12000.0);
updateProgress(20);
addTask("Deploy til produktion");
printProjectProfile();
```

```
=== PROJEKT: CRM Redesign ===
[... samme som Iteration 1 ...]

Tilføjer udgift: 12000,00 kr.
Nyt forbrug: 35400,00 kr. | Restbudget: 49600,00 kr.

Fremdrift opdateret: 55%

Opgave tilføjet: Deploy til produktion

=== PROJEKT: CRM Redesign ===
Fremdrift: 55% – På rette spor – mere end halvvejs
[...]
Opgaver (5):
  ...
  5. Deploy til produktion
```

### Udfordring (valgfri)

Lav en metode `estimateCompletion(int sprintVelocity)` der returnerer det estimerede antal sprints tilbage som en int.

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
public class Project {
    // felter
    // konstruktør
    // metoder fra Iteration 3
}
```

Opret mindst to projekter i `main` og demonstrér at de er uafhængige af hinanden.

### Forventet output (eksempel)

```java
Project p1 = new Project("CRM Redesign", "Nordea", 85000.0, 4);
Project p2 = new Project("App Udvikling", "DSB", 120000.0, 6);

p1.addExpense(23400.0);
p1.updateProgress(35);
p1.addTask("Kravspecifikation");

p2.addExpense(5000.0);
p2.updateProgress(10);

p1.printProjectProfile();
p2.printProjectProfile();
```

```
=== PROJEKT: CRM Redesign ===
Kunde: Nordea
Fremdrift: 35% – Undervejs
Budget: 85000,00 kr. | Forbrug: 23400,00 kr.
Team: 4 personer

=== PROJEKT: App Udvikling ===
Kunde: DSB
Fremdrift: 10% – Opstart
Budget: 120000,00 kr. | Forbrug: 5000,00 kr.
Team: 6 personer
```

### Udfordring (valgfri)

- Lav en `Task`-klasse med felterne `title` (String), `isCompleted` (boolean) og `assignedTo` (String)
- Erstat dit `String[]` tasks med et `Task[]`
- Tilføj en metode `completeTask(int index)` der markerer en opgave som færdig
- Lav en metode `getCompletionRate()` der returnerer procentdelen af færdige opgaver

---

### Refleksion

1. Hvad var svært?
2. Hvad ville du gøre anderledes hvis du startede forfra?
3. Hvordan har klasser ændret måden du tænker om kode?
4. Hvad ville det kræve at gøre dette til et rigtigt system?
