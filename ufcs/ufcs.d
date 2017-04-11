module ucfs;
import std.stdio, std.algorithm.iteration, std.range;
void main() 
{
    writeln("Typowy ", "flow");
    writeln(filter!(a => a % 2 == 0)(iota(10))); 

    "W stylu ".writeln("UFCS");
    10.iota // generuje liczby z przedzialu od 0 do 9
        .filter!(a => a % 2 == 0) // filtruje tylko liczby parzyste
        .writeln(); // wyswietl liczby na stdout
}
