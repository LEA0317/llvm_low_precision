all: test_float4.ll test_float8.ll test_int4.ll test_uint4.ll test_int256.ll

llvm:
	@echo "** build llvm **"
	cd ../llvm9.0.0 && ./build_compiler.sh

clean:
	@echo "** remove generated files **"
	rm *.ll *~

test_float4.ll:
	@echo "** test for float4 **"
	../llvm9.0.0/llvm/build/bin/clang++ -S -emit-llvm test_float4.cpp

test_float8.ll:
	@echo "** test for float8 **"
	../llvm9.0.0/llvm/build/bin/clang++ -S -emit-llvm test_float8.cpp

test_int4.ll:
	@echo "** test for int4 **"
	../llvm9.0.0/llvm/build/bin/clang++ -S -emit-llvm test_int4.cpp

test_uint4.ll:
	@echo "** test for uint4 **"
	../llvm9.0.0/llvm/build/bin/clang++ -S -emit-llvm test_uint4.cpp

test_int256.ll:
	@echo "** test for int256 **"
	../llvm9.0.0/llvm/build/bin/clang++ -S -emit-llvm test_int256.cpp
