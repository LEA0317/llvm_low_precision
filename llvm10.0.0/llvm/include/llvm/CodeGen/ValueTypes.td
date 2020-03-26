//===- ValueTypes.td - ValueType definitions ---------------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// Value types - These values correspond to the register types defined in the
// MachineValueTypes.h file.  If you update anything here, you must update it
// there as well!
//
//===----------------------------------------------------------------------===//

class ValueType<int size, int value> {
  string Namespace = "MVT";
  int Size = size;
  int Value = value;
}

def OtherVT: ValueType<0  ,  1>;   // "Other" value
def i1     : ValueType<1  ,  2>;   // One bit boolean value
def i4     : ValueType<4  ,  3>;   // 4-bit boolean value
def i8     : ValueType<8  ,  4>;   // 8-bit integer value
def i16    : ValueType<16 ,  5>;   // 16-bit integer value
def i32    : ValueType<32 ,  6>;   // 32-bit integer value
def i64    : ValueType<64 ,  7>;   // 64-bit integer value
def i128   : ValueType<128,  8>;   // 128-bit integer value
def i256   : ValueType<256,  9>;   // 256-bit integer value
def f4     : ValueType<4 ,  10>;   // 4-bit floating point value
def f8     : ValueType<8 ,  11>;   // 8-bit floating point value
def f16    : ValueType<16 , 12>;   // 16-bit floating point value
def f32    : ValueType<32 , 13>;   // 32-bit floating point value
def f64    : ValueType<64 , 14>;   // 64-bit floating point value
def f80    : ValueType<80 , 15>;   // 80-bit floating point value
def f128   : ValueType<128, 16>;   // 128-bit floating point value
def ppcf128: ValueType<128, 17>;   // PPC 128-bit floating point value

def v1i1   : ValueType<1 ,  18>;   //   1 x i1 vector value
def v2i1   : ValueType<2 ,  19>;   //   2 x i1 vector value
def v4i1   : ValueType<4 ,  20>;   //   4 x i1 vector value
def v8i1   : ValueType<8 ,  21>;   //   8 x i1 vector value
def v16i1  : ValueType<16,  22>;   //  16 x i1 vector value
def v32i1  : ValueType<32 , 23>;   //  32 x i1 vector value
def v64i1  : ValueType<64 , 24>;   //  64 x i1 vector value
def v128i1 : ValueType<128, 25>;   // 128 x i1 vector value
def v256i1 : ValueType<256, 26>;   // 256 x i1 vector value
def v512i1 : ValueType<512, 27>;   // 512 x i1 vector value
def v1024i1: ValueType<1024,28>;   //1024 x i1 vector value

def v1i8   : ValueType<8,   29>;   //  1 x i8  vector value
def v2i8   : ValueType<16 , 30>;   //  2 x i8  vector value
def v4i8   : ValueType<32 , 31>;   //  4 x i8  vector value
def v8i8   : ValueType<64 , 32>;   //  8 x i8  vector value
def v16i8  : ValueType<128, 33>;   // 16 x i8  vector value
def v32i8  : ValueType<256, 34>;   // 32 x i8  vector value
def v64i8  : ValueType<512, 35>;   // 64 x i8  vector value
def v128i8 : ValueType<1024,36>;   //128 x i8  vector value
def v256i8 : ValueType<2048,37>;   //256 x i8  vector value

def v1i16  : ValueType<16 , 38>;   //  1 x i16 vector value
def v2i16  : ValueType<32 , 39>;   //  2 x i16 vector value
def v3i16  : ValueType<48 , 40>;   //  3 x i16 vector value
def v4i16  : ValueType<64 , 41>;   //  4 x i16 vector value
def v8i16  : ValueType<128, 42>;   //  8 x i16 vector value
def v16i16 : ValueType<256, 43>;   // 16 x i16 vector value
def v32i16 : ValueType<512, 44>;   // 32 x i16 vector value
def v64i16 : ValueType<1024,45>;   // 64 x i16 vector value
def v128i16: ValueType<2048,46>;   //128 x i16 vector value

def v1i32    : ValueType<32 , 47>;   //  1 x i32 vector value
def v2i32    : ValueType<64 , 48>;   //  2 x i32 vector value
def v3i32    : ValueType<96 , 49>;   //  3 x i32 vector value
def v4i32    : ValueType<128, 50>;   //  4 x i32 vector value
def v5i32    : ValueType<160, 51>;   //  5 x i32 vector value
def v8i32    : ValueType<256, 52>;   //  8 x i32 vector value
def v16i32   : ValueType<512, 53>;   // 16 x i32 vector value
def v32i32   : ValueType<1024,54>;   // 32 x i32 vector value
def v64i32   : ValueType<2048,55>;   // 64 x i32 vector value
def v128i32  : ValueType<4096,56>;   // 128 x i32 vector value
def v256i32  : ValueType<8182,57>;   // 256 x i32 vector value
def v512i32  : ValueType<16384,58>;  // 512 x i32 vector value
def v1024i32 : ValueType<32768,59>;  // 1024 x i32 vector value
def v2048i32 : ValueType<65536,60>;  // 2048 x i32 vector value

def v1i64  : ValueType<64 , 61>;   //  1 x i64 vector value
def v2i64  : ValueType<128, 62>;   //  2 x i64 vector value
def v4i64  : ValueType<256, 63>;   //  4 x i64 vector value
def v8i64  : ValueType<512, 64>;   //  8 x i64 vector value
def v16i64 : ValueType<1024,65>;   // 16 x i64 vector value
def v32i64 : ValueType<2048,66>;   // 32 x i64 vector value

def v1i128 : ValueType<128, 67>;   //  1 x i128 vector value

def v2f16    : ValueType<32 , 68>;    //    2 x f16 vector value
def v3f16    : ValueType<48 , 69>;    //    3 x f16 vector value
def v4f16    : ValueType<64 , 70>;    //    4 x f16 vector value
def v8f16    : ValueType<128, 71>;    //    8 x f16 vector value
def v16f16   : ValueType<256, 72>;    //    8 x f16 vector value
def v32f16   : ValueType<512, 73>;    //    8 x f16 vector value
def v1f32    : ValueType<32 , 74>;    //    1 x f32 vector value
def v2f32    : ValueType<64 , 75>;    //    2 x f32 vector value
def v3f32    : ValueType<96 , 76>;    //    3 x f32 vector value
def v4f32    : ValueType<128, 77>;    //    4 x f32 vector value
def v5f32    : ValueType<160, 78>;    //    5 x f32 vector value
def v8f32    : ValueType<256, 79>;    //    8 x f32 vector value
def v16f32   : ValueType<512,  80>;   //   16 x f32 vector value
def v32f32   : ValueType<1024, 81>;   //   32 x f32 vector value
def v64f32   : ValueType<2048, 82>;   //   64 x f32 vector value
def v128f32  : ValueType<4096, 83>;   //  128 x f32 vector value
def v256f32  : ValueType<8182, 84>;   //  256 x f32 vector value
def v512f32  : ValueType<16384, 85>;  //  512 x f32 vector value
def v1024f32 : ValueType<32768, 86>;  // 1024 x f32 vector value
def v2048f32 : ValueType<65536, 87>;  // 2048 x f32 vector value
def v1f64    : ValueType<64, 88>;     //    1 x f64 vector value
def v2f64    : ValueType<128, 89>;    //    2 x f64 vector value
def v4f64    : ValueType<256, 90>;    //    4 x f64 vector value
def v8f64    : ValueType<512, 91>;    //    8 x f64 vector value

def nxv1i1  : ValueType<1,   92>;  // n x  1 x i1  vector value
def nxv2i1  : ValueType<2,   93>;  // n x  2 x i1  vector value
def nxv4i1  : ValueType<4,   94>;  // n x  4 x i1  vector value
def nxv8i1  : ValueType<8,   95>;  // n x  8 x i1  vector value
def nxv16i1 : ValueType<16,  96>;  // n x 16 x i1  vector value
def nxv32i1 : ValueType<32,  97>;  // n x 32 x i1  vector value

def nxv1i8  : ValueType<8,   98>;  // n x  1 x i8  vector value
def nxv2i8  : ValueType<16,  99>;  // n x  2 x i8  vector value
def nxv4i8  : ValueType<32, 100>;  // n x  4 x i8  vector value
def nxv8i8  : ValueType<64, 101>;  // n x  8 x i8  vector value
def nxv16i8 : ValueType<128,102>;  // n x 16 x i8  vector value
def nxv32i8 : ValueType<256,103>;  // n x 32 x i8  vector value

def nxv1i16 : ValueType<16,  104>; // n x  1 x i16 vector value
def nxv2i16 : ValueType<32,  105>; // n x  2 x i16 vector value
def nxv4i16 : ValueType<64,  106>; // n x  4 x i16 vector value
def nxv8i16 : ValueType<128, 107>; // n x  8 x i16 vector value
def nxv16i16: ValueType<256, 108>; // n x 16 x i16 vector value
def nxv32i16: ValueType<512, 109>; // n x 32 x i16 vector value

def nxv1i32 : ValueType<32,  110>; // n x  1 x i32 vector value
def nxv2i32 : ValueType<64,  111>; // n x  2 x i32 vector value
def nxv4i32 : ValueType<128, 112>; // n x  4 x i32 vector value
def nxv8i32 : ValueType<256, 113>; // n x  8 x i32 vector value
def nxv16i32: ValueType<512, 114>; // n x 16 x i32 vector value
def nxv32i32: ValueType<1024,115>; // n x 32 x i32 vector value

def nxv1i64 : ValueType<64,  116>; // n x  1 x i64 vector value
def nxv2i64 : ValueType<128, 117>; // n x  2 x i64 vector value
def nxv4i64 : ValueType<256, 118>; // n x  4 x i64 vector value
def nxv8i64 : ValueType<512, 119>; // n x  8 x i64 vector value
def nxv16i64: ValueType<1024,120>; // n x 16 x i64 vector value
def nxv32i64: ValueType<2048,121>; // n x 32 x i64 vector value

def nxv2f16  : ValueType<32 , 122>; // n x  2 x f16 vector value
def nxv4f16  : ValueType<64 , 123>; // n x  4 x f16 vector value
def nxv8f16  : ValueType<128, 124>; // n x  8 x f16 vector value
def nxv1f32  : ValueType<32 , 125>; // n x  1 x f32 vector value
def nxv2f32  : ValueType<64 , 126>; // n x  2 x f32 vector value
def nxv4f32  : ValueType<128, 127>; // n x  4 x f32 vector value
def nxv8f32  : ValueType<256, 128>; // n x  8 x f32 vector value
def nxv16f32 : ValueType<512, 129>; // n x 16 x f32 vector value
def nxv1f64  : ValueType<64,  130>; // n x  1 x f64 vector value
def nxv2f64  : ValueType<128, 131>; // n x  2 x f64 vector value
def nxv4f64  : ValueType<256, 132>; // n x  4 x f64 vector value
def nxv8f64  : ValueType<512, 133>; // n x  8 x f64 vector value

def x86mmx : ValueType<64 , 134>;   // X86 MMX value
def FlagVT : ValueType<0  , 135>;   // Pre-RA sched glue
def isVoid : ValueType<0  , 136>;   // Produces no value
def untyped: ValueType<8  , 137>;   // Produces an untyped value
def exnref: ValueType<0, 138>;      // WebAssembly's exnref type
def token  : ValueType<0  , 248>;   // TokenTy
def MetadataVT: ValueType<0, 249>;  // Metadata

// Pseudo valuetype mapped to the current pointer size to any address space.
// Should only be used in TableGen.
def iPTRAny   : ValueType<0, 250>;

// Pseudo valuetype to represent "vector of any size"
def vAny   : ValueType<0  , 251>;

// Pseudo valuetype to represent "float of any format"
def fAny   : ValueType<0  , 252>;

// Pseudo valuetype to represent "integer of any bit width"
def iAny   : ValueType<0  , 253>;

// Pseudo valuetype mapped to the current pointer size.
def iPTR   : ValueType<0  , 254>;

// Pseudo valuetype to represent "any type of any size".
def Any    : ValueType<0  , 255>;

/// This class is for targets that want to use pointer types in patterns
/// with the GlobalISelEmitter.  Targets must define their own pointer
/// derived from this class.  The scalar argument should be an
/// integer type with the same bit size as the ponter.
/// e.g. def p0 : PtrValueType <i64, 0>;

class PtrValueType <ValueType scalar, int addrspace> :
    ValueType<scalar.Size, scalar.Value> {
  int AddrSpace = addrspace;
}
