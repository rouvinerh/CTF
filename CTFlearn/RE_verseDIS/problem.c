Challenge is rated 50 points under Reverse Engineering Category.

Gives us an executable file to play with. Using retdec, I decompiled it to the following main function.
  
  int main(int argc, char ** argv) {
    // 0x740
    printf("Input password: ");
    scanf("%s", (char **)&g8);
    int64_t v1 = 0;
    char v2 = *(char *)(v1 + (int64_t)"IdontKnowWhatsGoingOn"); // 0x787
    int64_t v3 = 4 * v1; // 0x793
    *(int32_t *)(v3 + (int64_t)&g9) = (int32_t)v2;
    int32_t v4 = *(int32_t *)(v3 + (int64_t)&g4); // 0x7d2
    *(char *)(v1 + (int64_t)&g10) = v2 ^ (char)v4;
    v1++;
    int64_t v5 = 0; // 0x7ef
    while (v1 != 22) {
        // 0x77a
        v2 = *(char *)(v1 + (int64_t)"IdontKnowWhatsGoingOn");
        v3 = 4 * v1;
        *(int32_t *)(v3 + (int64_t)&g9) = (int32_t)v2;
        v4 = *(int32_t *)(v3 + (int64_t)&g4);
        *(char *)(v1 + (int64_t)&g10) = v2 ^ (char)v4;
        v1++;
        v5 = 0;
    }
    char v6 = *(char *)(v5 + (int64_t)&g10); // 0x818
    if (*(char *)(v5 + (int64_t)&g8) != v6) {
        // 0x820
        *(int32_t *)0x201098 = 0;
    }
    int64_t v7 = v5 + 1;
    v5 = v7;
    while (v7 != 22) {
        // 0x7fa
        v6 = *(char *)(v5 + (int64_t)&g10);
        if (*(char *)(v5 + (int64_t)&g8) != v6) {
            // 0x820
            *(int32_t *)0x201098 = 0;
        }
        // 0x82a
        v7 = v5 + 1;
        v5 = v7;
    }
    // 0x834
    if (g5 == 0) {
        // 0x84c
        puts("Wrong password");
    } else {
        // 0x83e
        puts("Good job dude !!!");
    }
    // 0x858
    return 0;
}

