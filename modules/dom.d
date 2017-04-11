import koteł = zwierze.kot; // globalny "przezwany" import

// import zwierze; // pozwala zaimportowac calą "paczkę"

void main() {
    import zwierze.piesek: Pies; // lokalny, selektywny import
    static import zwierze.piesek; // lokalny, wymyszczający pełną ścięzkę import
 
    auto pies = new Pies(); 
    auto kot = new koteł.Kot();
    auto pieseł = new zwierze.piesek.Pieseł; // new Pieseł == błąd
}
