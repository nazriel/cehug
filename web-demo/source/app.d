import vibe.d;
shared static this()
{
	auto settings = new HTTPServerSettings;
	settings.port = 8080;
	settings.bindAddresses = ["::1", "127.0.0.1"];
	listenHTTP(settings, 
        (req, res) => res.writeBody("Hello, World!"));
	logInfo("Please open http://127.0.0.1:8080/");
}