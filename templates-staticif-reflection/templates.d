import std.stdio;

void funkcjaSzablonowaWariadyczna(Typy...)(Typy obiekty) {
    foreach (num, obiekt; obiekty) {
        write(obiekt); 
        if (obiekty.length - 1 != num) { write(", "); } else { writeln(); } 
    }
}

void funkcjaSzablonowaWariadyczna(Typ : float)(Typ f) {
    writeln("specjalizja dla float'u");
}

void funkcjaZWarunkiem(int n)() if (n > 10) {
    writeln("Jest wiecej niż 10, biorę!");
}

void funckcjaZDomyslnymTypem(T = string)() {
    writeln("typem o ktorym mysle jest: ", T.stringof);
}

struct StrukturaZWariadikiem(T...) {
    T args;
    void przekaz(T argumenty) {}
}

void main() {
    funkcjaSzablonowaWariadyczna("Witaj", 213, "świecie");
    funkcjaSzablonowaWariadyczna(1.23);
    funkcjaSzablonowaWariadyczna("D jak dobro");
    funkcjaSzablonowaWariadyczna();
    funkcjaZWarunkiem!15;
    funckcjaZDomyslnymTypem();
    funckcjaZDomyslnymTypem!int();
    
    StrukturaZWariadikiem!(int, float, string) s; 
    s.przekaz(s.args);
    pragma(msg, typeof(s.args)); // wyswietlone podczas kompilacji
}
