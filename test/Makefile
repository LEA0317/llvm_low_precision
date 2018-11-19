all: test_fixed4.ll test_int4.ll

clean:
	@echo "** remove ll files **"
	rm *.ll

test_fixed4.ll:
	@echo "** test for fixed4 **"
	../llvm7.0.0/build/bin/clang++ -S -emit-llvm test_fixed4.cpp

test_int4.ll:
	@echo "** test for test4 **"
	../llvm7.0.0/build/bin/clang++ -S -emit-llvm test_int4.cpp
