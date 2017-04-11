#include <cstdio>

class World {
	virtual void metoda_z_cpp() = 0;
};

class Hello final : public World {
public:
	Hello(const char* msg) : mMsg(msg){
		// nothing
	}

	void metoda_z_cpp() override {
		printf("%s", mMsg);
	}

private:
	const char* mMsg = nullptr;
};

Hello* createInstance(const char* msg) {
	return new Hello(msg);
}

void deleteInstance(Hello*& obj) {
	delete obj;
	obj = nullptr;
}
