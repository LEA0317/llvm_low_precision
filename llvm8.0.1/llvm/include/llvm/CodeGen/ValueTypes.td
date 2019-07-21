//===- ValueTypes.td - ValueType definitions ---------------*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
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
def i4     : ValueType<4  ,  3>;   // 4-bit integer value
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
def v512i1 : ValueType<512, 26>;   // 512 x i1 vector value
def v1024i1: ValueType<1024,27>;   //1024 x i1 vector value

def v1i8   : ValueType<8,   28>;   //  1 x i8  vector value
def v2i8   : ValueType<16 , 29>;   //  2 x i8  vector value
def v4i8   : ValueType<32 , 30>;   //  4 x i8  vector value
def v8i8   : ValueType<64 , 31>;   //  8 x i8  vector value
def v16i8  : ValueType<128, 32>;   // 16 x i8  vector value
def v32i8  : ValueType<256, 33>;   // 32 x i8  vector value
def v64i8  : ValueType<512, 34>;   // 64 x i8  vector value
def v128i8 : ValueType<1024,35>;   //128 x i8  vector value
def v256i8 : ValueType<2048,36>;   //256 x i8  vector value

def v1i16  : ValueType<16 , 37>;   //  1 x i16 vector value
def v2i16  : ValueType<32 , 38>;   //  2 x i16 vector value
def v4i16  : ValueType<64 , 39>;   //  4 x i16 vector value
def v8i16  : ValueType<128, 40>;   //  8 x i16 vector value
def v16i16 : ValueType<256, 41>;   // 16 x i16 vector value
def v32i16 : ValueType<512, 42>;   // 32 x i16 vector value
def v64i16 : ValueType<1024,43>;   // 64 x i16 vector value
def v128i16: ValueType<2048,44>;   //128 x i16 vector value

def v1i32  : ValueType<32 , 45>;   //  1 x i32 vector value
def v2i32  : ValueType<64 , 46>;   //  2 x i32 vector value
def v4i32  : ValueType<128, 47>;   //  4 x i32 vector value
def v8i32  : ValueType<256, 48>;   //  8 x i32 vector value
def v16i32 : ValueType<512, 49>;   // 16 x i32 vector value
def v32i32 : ValueType<1024,50>;   // 32 x i32 vector value
def v64i32 : ValueType<2048,51>;   // 64 x i32 vector value

def v1i64  : ValueType<64 , 52>;   //  1 x i64 vector value
def v2i64  : ValueType<128, 53>;   //  2 x i64 vector value
def v4i64  : ValueType<256, 54>;   //  4 x i64 vector value
def v8i64  : ValueType<512, 55>;   //  8 x i64 vector value
def v16i64 : ValueType<1024,56>;   // 16 x i64 vector value
def v32i64 : ValueType<2048,57>;   // 32 x i64 vector value

def v1i128 : ValueType<128, 58>;   //  1 x i128 vector value

def nxv1i1  : ValueType<1,   59>;  // n x  1 x i1  vector value
def nxv2i1  : ValueType<2,   60>;  // n x  2 x i1  vector value
def nxv4i1  : ValueType<4,   61>;  // n x  4 x i1  vector value
def nxv8i1  : ValueType<8,   62>;  // n x  8 x i1  vector value
def nxv16i1 : ValueType<16,  63>;  // n x 16 x i1  vector value
def nxv32i1 : ValueType<32,  64>;  // n x 32 x i1  vector value

def nxv1i8  : ValueType<8,   65>;  // n x  1 x i8  vector value
def nxv2i8  : ValueType<16,  66>;  // n x  2 x i8  vector value
def nxv4i8  : ValueType<32,  67>;  // n x  4 x i8  vector value
def nxv8i8  : ValueType<64,  68>;  // n x  8 x i8  vector value
def nxv16i8 : ValueType<128, 69>;  // n x 16 x i8  vector value
def nxv32i8 : ValueType<256, 70>;  // n x 32 x i8  vector value

def nxv1i16 : ValueType<16,  71>;  // n x  1 x i16 vector value
def nxv2i16 : ValueType<32,  72>;  // n x  2 x i16 vector value
def nxv4i16 : ValueType<64,  73>;  // n x  4 x i16 vector value
def nxv8i16 : ValueType<128, 74>;  // n x  8 x i16 vector value
def nxv16i16: ValueType<256, 75>;  // n x 16 x i16 vector value
def nxv32i16: ValueType<512, 76>;  // n x 32 x i16 vector value

def nxv1i32 : ValueType<32,  77>;  // n x  1 x i32 vector value
def nxv2i32 : ValueType<64,  78>;  // n x  2 x i32 vector value
def nxv4i32 : ValueType<128, 79>;  // n x  4 x i32 vector value
def nxv8i32 : ValueType<256, 80>;  // n x  8 x i32 vector value
def nxv16i32: ValueType<512, 81>;  // n x 16 x i32 vector value
def nxv32i32: ValueType<1024,82>;  // n x 32 x i32 vector value

def nxv1i64 : ValueType<64,  83>;  // n x  1 x i64 vector value
def nxv2i64 : ValueType<128, 84>;  // n x  2 x i64 vector value
def nxv4i64 : ValueType<256, 85>;  // n x  4 x i64 vector value
def nxv8i64 : ValueType<512, 86>;  // n x  8 x i64 vector value
def nxv16i64: ValueType<1024,87>;  // n x 16 x i64 vector value
def nxv32i64: ValueType<2048,88>;  // n x 32 x i64 vector value

def v2f16  : ValueType<32 , 89>;   //  2 x f16 vector value
def v4f16  : ValueType<64 , 90>;   //  4 x f16 vector value
def v8f16  : ValueType<128, 91>;   //  8 x f16 vector value
def v1f32  : ValueType<32 , 92>;   //  1 x f32 vector value
def v2f32  : ValueType<64 , 93>;   //  2 x f32 vector value
def v4f32  : ValueType<128, 94>;   //  4 x f32 vector value
def v8f32  : ValueType<256, 95>;   //  8 x f32 vector value
def v16f32 : ValueType<512, 96>;   // 16 x f32 vector value
def v1f64  : ValueType<64,  97>;   //  1 x f64 vector value
def v2f64  : ValueType<128, 98>;   //  2 x f64 vector value
def v4f64  : ValueType<256, 99>;   //  4 x f64 vector value
def v8f64  : ValueType<512,100>;   //  8 x f64 vector value

def nxv2f16  : ValueType<32 , 101>; // n x  2 x f16 vector value
def nxv4f16  : ValueType<64 , 102>; // n x  4 x f16 vector value
def nxv8f16  : ValueType<128, 103>; // n x  8 x f16 vector value
def nxv1f32  : ValueType<32 , 104>; // n x  1 x f32 vector value
def nxv2f32  : ValueType<64 , 105>; // n x  2 x f32 vector value
def nxv4f32  : ValueType<128, 106>; // n x  4 x f32 vector value
def nxv8f32  : ValueType<256, 107>; // n x  8 x f32 vector value
def nxv16f32 : ValueType<512, 108>; // n x 16 x f32 vector value
def nxv1f64  : ValueType<64,  109>; // n x  1 x f64 vector value
def nxv2f64  : ValueType<128, 110>; // n x  2 x f64 vector value
def nxv4f64  : ValueType<256, 111>; // n x  4 x f64 vector value
def nxv8f64  : ValueType<512, 112>; // n x  8 x f64 vector value

def x86mmx : ValueType<64 , 113>;   // X86 MMX value
def FlagVT : ValueType<0  , 114>;   // Pre-RA sched glue
def isVoid : ValueType<0  , 115>;   // Produces no value
def untyped: ValueType<8  , 116>;   // Produces an untyped value
def ExceptRef: ValueType<0, 117>;   // WebAssembly's except_ref type
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
