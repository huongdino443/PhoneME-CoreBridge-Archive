#include <string>
#include <filesystem>
#include <condition_variable>
extern "C" const char* probe_symbol(const char* s) {
    static std::string x;
    x.assign(s ? s : "");
    std::filesystem::path p(x);
    static std::condition_variable cv;
    (void)cv;
    return x.c_str();
}
