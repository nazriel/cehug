uint kwadrat(int a, int b) 
in {
    assert(a >= 0, "A musi byc wieksze od 1!");
    assert(b > 0, "B musi byc wieksze od 0!");
}
out(wynik) {
    assert(wynik != 0, "Cos poszło nie tak..?");
}
body {
    return a * b;
}

unittest {
    assert(kwadrat(0, 1) == 1);
}
