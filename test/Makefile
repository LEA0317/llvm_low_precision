all: test_fixed4.ll test_fixed8.ll test_int4.ll test_uint4.ll test_int256.ll

llvm:
	@echo "** build llvm **"
	cd ../llvm8.0.1 && ./build_compiler.sh

clean:
	@echo "** remove generated files **"
	rm *.ll *~

test_fixed4.ll:
	@echo "** test for fixed4 **"
	../llvm8.0.1/llvm/build/bin/clang++ -S -emit-llvm test_fixed4.cpp

test_fixed8.ll:
	@echo "** test for fixed8 **"
	../llvm8.0.1/llvm/build/bin/clang++ -S -emit-llvm test_fixed8.cpp

test_int4.ll:
	@echo "** test for int4 **"
	../llvm8.0.1/llvm/build/bin/clang++ -S -emit-llvm test_int4.cpp

test_uint4.ll:
	@echo "** test for uint4 **"
	../llvm8.0.1/llvm/build/bin/clang++ -S -emit-llvm test_uint4.cpp

test_int256.ll:
	@echo "** test for int256 **"
	../llvm8.0.1/llvm/build/bin/clang++ -S -emit-llvm test_int256.cpp
