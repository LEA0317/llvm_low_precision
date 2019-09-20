void test(float4 *a, float4 *b, float4 *c) {
  *c = __builtin_float4_add(*a, *b);
}
