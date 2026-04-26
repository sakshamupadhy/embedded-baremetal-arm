int main() {
volatile int x = 10;
volatile int y = 20;
volatile int z = x + y;

while(1); // infinite loop (embedded style)
}
