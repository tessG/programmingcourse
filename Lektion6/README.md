# 06 · Objekter og klasser

## Problemet med løse variabler

Forestil dig at du skal holde styr på to bankkonti. Med det du ved indtil nu, kunne det se sådan ud:

```java
String name1 = "Anna";
float balance1 = 1000.0;

String name2 = "Bo";
float balance2 = 500.0;
```

Det virker — men hvad nu hvis du har ti konti? Eller hundrede? Og hvad nu hvis du vil lave en operation der hører naturligt til *én* konto, fx at hæve penge? Så ender du med funktioner der tager alle variablerne som parametre.

En klasse løser det: du samler data og adfærd ét sted, og opretter så mange *instanser* du har brug for.

---

## Et nyt program — én klasse, to objekter

```java
BankAccount anna;
BankAccount bo;

void setup() {
  anna = new BankAccount("Anna", 1000.0);
  bo   = new BankAccount("Bo", 500.0);

  anna.deposit(250.0);
  anna.withdraw(100.0);
  bo.deposit(750.0);

  println(anna.status());
  println(bo.status());
}

class BankAccount {
  String owner;
  float balance;

  BankAccount(String owner, float balance) {
    this.owner   = owner;
    this.balance = balance;
  }

  void deposit(float amount) {
    balance = balance + amount;
  }

  void withdraw(float amount) {
    if (amount > balance) {
      println("Ikke nok penge på kontoen.");
    } else {
      balance = balance - amount;
    }
  }

  String status() {
    return owner + ": " + balance + " kr.";
  }
}
```

`anna` og `bo` er to separate objekter — begge af typen `BankAccount`. De deler samme struktur, men har deres egne data.

---

## Hvad er en klasse?

En klasse er en **skabelon** for objekter. Den beskriver:

- hvilke **felter** objektet har (data)
- hvilke **metoder** objektet kan udføre (adfærd)

Et **objekt** er en konkret instans af klassen — skabt med `new`.

```
Klasse = opskrift
Objekt = ret lavet efter opskriften
```

---

## Syntaks

```java
class ClassName {
  // felter
  type fieldName;

  // konstruktør
  ClassName(type parameter) {
    this.fieldName = parameter;
  }

  // metoder
  void doSomething() {
    // ...
  }

  type getValue() {
    return fieldName;
  }
}
```

---

## Felter

Felter er variablerne der tilhører objektet. De erklæres øverst i klassen og er tilgængelige i alle klassens metoder:

```java
class BankAccount {
  String owner;   // felt
  float balance;  // felt
  ...
}
```

---

## Konstruktøren

Konstruktøren er en særlig metode der kører når objektet oprettes med `new`. Den bruges til at give felterne deres startværdier:

```java
BankAccount(String owner, float balance) {
  this.owner   = owner;   // this.owner = feltets owner
  this.balance = balance; // this.balance = feltets balance
}
```

`this` skelner mellem feltets navn og parameterens navn når de hedder det samme.

---

## Metoder

Metoder er funktioner der tilhører klassen. De har adgang til alle felternes data:

```java
void deposit(float amount) {
  balance = balance + amount;
}

String status() {
  return owner + ": " + balance + " kr.";
}
```

---

## Opret og brug et objekt

```java
// opret
BankAccount anna = new BankAccount("Anna", 1000.0);

// brug metoder
anna.deposit(250.0);
anna.withdraw(100.0);
println(anna.status());

// læs et felt direkte
println(anna.balance);
```

---

## Objekter og ArrayList

Klasser er særligt kraftfulde kombineret med `ArrayList`. Du kan samle mange objekter i en liste og løbe igennem dem med en løkke:

```java
ArrayList<BankAccount> accounts = new ArrayList<BankAccount>();
accounts.add(new BankAccount("Anna", 1000.0));
accounts.add(new BankAccount("Bo", 500.0));
accounts.add(new BankAccount("Carla", 750.0));

for (BankAccount account : accounts) {
  println(account.status());
}
```

Det er her klasser og løkker mødes — og det er fundamentet for alt der hedder objektorienteret programmering.