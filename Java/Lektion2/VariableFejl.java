public class Main {
    public static void main(String[] args) {

        // --- Vare 1: Kontorstol ---
        int price = 1599.95;                          // Fejl 1
        String productName = "Ergonomisk kontorstol"  // Fejl 2
        int stock = 40;

        System.out.println("Vare: " + productName);
        System.out.println("Pris: " + price);
        System.out.println("Antal på lager: " + stockk); // Fejl 3

        // --- Beholdning efter salg ---
        int sold = 12;
        int remaining = stock + sold;                 // Fejl 4
        System.out.println("Tilbage efter salg: " + remaining);

        // --- Kategorier ---
        String[] categories = {"Møbler", "Elektronik", "Kontorartikler"};
        System.out.println("Første kategori: " + categories[0]);
        System.out.println("Tredje kategori: " + categories[3]); // Fejl 5

        // --- Rabat ---
        if (stock > 20) {
            int discount = 10;
        }
        System.out.println("Rabat: " + discount + "%"); // Fejl 6

        // --- Lagerværdi ---
        double totalValue = price + stock;             // Fejl 7
        System.out.println("Samlet lagerværdi: " + totalValue + " kr.");

        // --- Status ---
        boolean isActive = "true";                    // Fejl 8
        System.out.println("Aktiv: " + isActive);
    }
}
