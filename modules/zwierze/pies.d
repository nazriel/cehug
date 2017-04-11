module zwierze.piesek;

static ~this() { import std.stdio; writeln("Pies zaszczeka jak już go nie bedziemy potrzebować"); }

class Pies {}
class Pieseł : Pies {}
