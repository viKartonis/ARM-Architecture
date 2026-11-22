#include <cstdint>
#include <cstdio>

uint64_t register_probe(uint64_t a, uint64_t b) {
    uint64_t x = a + b;
    return x * 3;
}

int main() {
    uint64_t a = 100;
    uint64_t b = 200;

    auto result = register_probe(a, b);
    std::printf("%llu\n",
                static_cast<unsigned long long>(result));
}
