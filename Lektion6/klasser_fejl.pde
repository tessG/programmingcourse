// ØVELSE: Find og ret fejlene
// Der er 8 fejl i denne sketch — nogle er syntaksfejl, andre er logiske fejl.
// Kør sketchen, læs fejlmeddelelserne, og ret én fejl ad gangen.

BankAccount anna;
BankAccount bo;

void setup() {
  // Fejl 1: mangler new og konstruktørargumenter
  anna = BankAccount();
  bo   = new BankAccount("Bo", 500.0);

  anna.deposit(200.0);
  bo.deposit(100.0);

  // Fejl 2: withdraw kaldes med et negativt beløb — hvad sker der?
  bo.withdraw(-50.0);

  println(anna.status());
  println(bo.status());

  // Fejl 3: forsøger at tilgå et felt der ikke findes
  println(anna.accountNumber);

  // byg en liste af konti
  ArrayList<BankAccount> accounts = new ArrayList<BankAccount>();
  accounts.add(new BankAccount("Carla", 750.0));
  accounts.add(new BankAccount("Diana", 300.0));

  // Fejl 4: forkert løkketype til at tilgå indeks
  for (BankAccount account : accounts) {
    println(accounts.get(account).status());
  }

  // summer alle saldi
  float total = 0;
  for (BankAccount account : accounts) {
    // Fejl 5: summerer forkert felt
    total = total + account.owner;
  }
  println("Samlet saldo: " + total);
}

class BankAccount {
  String owner;
  float balance;

  // Fejl 6: konstruktøren hedder noget andet end klassen
  Account(String owner, float balance) {
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

  // Fejl 7: metoden returnerer ingenting men er erklæret som String
  void status() {
    return owner + ": " + balance + " kr.";
  }

  // Fejl 8: logisk fejl — transfer trækker fra den forkerte konto
  void transfer(BankAccount other, float amount) {
    other.balance = other.balance - amount;
    this.balance  = this.balance + amount;
  }
}
