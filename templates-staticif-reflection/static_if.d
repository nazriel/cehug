class Wtyczka { void wsadz(){ } } 
class Kontakt { void przyjmij(){ } }

void przyjmij(Typ)(Typ obiekt) {
    // duzo kodu ktorego szkoda by bylo
    static if (is(Typ : Wtyczka)) 
        obiekt.wsadz();
    else static if (is(typeof(obiekt) : Kontakt))
        obiekt.przyjmij(); 
    else 
        pragma(msg, "Dziwny typ... moze sprawiac problemy", Typ.stringof);
    // duplikowac tylko zeby zrobic specjalizacje
}

void main() {
    przyjmij(new Wtyczka()); przyjmij(new Kontakt()); przyjmij(23);
}
