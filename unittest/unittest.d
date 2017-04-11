import std.exception;

int dodaj(int x, int y) { return x + y; }
void wyrzućCoś() { throw new Exception("Wyjątek!"); }

unittest
{   
    assert(dodaj(2, 2) == 4); // #1
    assert(dodaj(2, 2) == 5, "Jak się to mogło stać?"); // #2
    assertNotThrown(2.dodaj(2) == 4); // #3
    assertThrown(wyrzućCoś()); // #4
}

