void test(fixed4 *a, fixed4 *b, fixed4 *c) {
  *c = __builtin_fixed4_add(*a, *b);
}
