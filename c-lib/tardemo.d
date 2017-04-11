import std.stdio, std.conv;

extern(C) { 
	struct TAR;
	int tar_open(TAR**, const char*, void*, int, int, int);
	int tar_close(TAR*);
	void th_print_long_ls(TAR*);
}

void main() {
	TAR* tar;
	tar_open(&tar, "test.tar".ptr, null, 0, octal!(664), 1);
	th_print_long_ls(tar);
	tar_close(tar);
		
}
