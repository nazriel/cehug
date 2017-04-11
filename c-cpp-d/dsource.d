import std.stdio;

extern(C++) 
interface World {
      void metoda_z_cpp();
}

extern(C++)
class Hello : World {
	@disable this();
	override void metoda_z_cpp();
}

extern(C++) {
	Hello createInstance(const char*);
	void deleteInstance(ref Hello);
}

extern(C) {
	void funkcja_z_c(const char*);
}

void main() 
{
	Hello h = createInstance("Hello world from CPP\n".ptr);
	h.metoda_z_cpp();

	funkcja_z_c("Hello world from C\n".ptr);

	writeln("Hello world from D");
}
