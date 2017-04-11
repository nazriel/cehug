import core.stdc.stdio, core.stdc.string: strlen;
import std.string: toStringz;

void otworz_i_zapisz() {
    FILE* f = fopen("/tmp/test.c".toStringz(), "w+".toStringz());
    // cokolwiek sie nie stanie... nowa linia zostanie dopisana, a handle zostanie zamkniety 
    scope(exit) { fwrite("\n".ptr, 1, 1, f); fclose(f); } 

    const char* udalo = "udalo sie";
    const char* nie_udalo = "nie udalo sie";

    scope(success) { fwrite(udalo, typeof(*udalo).sizeof, udalo.strlen(), f); }
    scope(failure) { fwrite(nie_udalo, typeof(*nie_udalo).sizeof, nie_udalo.strlen(), f); }
    throw new Exception("nie uda sie!");
}

void main() {
    otworz_i_zapisz();
}
