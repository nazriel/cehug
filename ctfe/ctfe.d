uint kwadrat(uint a, uint b) { return a * b; }

int main() {
    // compile time 
    enum kw = kwadrat(9, 9);
    
    // runtime
    return kwadrat(2, kw); 
}
