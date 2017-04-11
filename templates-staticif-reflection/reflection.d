module refleksja;
import std.traits, std.stdio;

struct prad {}
@prad final class wtyczka { string pole; int zasieg; }
@prad class wtyczunia { void bar(){} }

void przyjmij(Typy...)() {
    foreach (Typ; Typy) {
        static if (hasMember!(Typ, "bar")) {
            new Typ().bar();
        } else static if (__traits(isFinalClass, Typ)) {
            static assert(__traits(compiles, { class Dziedzic : wtyczka {} }));
        }
    }
}

void main() {
    foreach (symbol; getSymbolsByUDA!(refleksja, prad)) {
        pragma(msg, symbol.stringof);
    }

    przyjmij!(wtyczka, wtyczunia);
}
