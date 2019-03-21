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
def f4     : ValueType<4 ,   9>;   // 4-bit floating point value
def f8     : ValueType<8 ,  10>;   // 8-bit floating point value
def f16    : ValueType<16 , 11>;   // 16-bit floating point value
def f32    : ValueType<32 , 12>;   // 32-bit floating point value
def f64    : ValueType<64 , 13>;   // 64-bit floating point value
def f80    : ValueType<80 , 14>;   // 80-bit floating point value
def f128   : ValueType<128, 15>;   // 128-bit floating point value
def ppcf128: ValueType<128, 16>;   // PPC 128-bit floating point value

def v1i1   : ValueType<1 ,  17>;   //   1 x i1 vector value
def v2i1   : ValueType<2 ,  18>;   //   2 x i1 vector value
def v4i1   : ValueType<4 ,  19>;   //   4 x i1 vector value
def v8i1   : ValueType<8 ,  20>;   //   8 x i1 vector value
def v16i1  : ValueType<16,  21>;   //  16 x i1 vector value
def v32i1  : ValueType<32 , 22>;   //  32 x i1 vector value
def v64i1  : ValueType<64 , 23>;   //  64 x i1 vector value
def v128i1 : ValueType<128, 24>;   // 128 x i1 vector value
def v512i1 : ValueType<512, 25>;   // 512 x i1 vector value
def v1024i1: ValueType<1024,26>;   //1024 x i1 vector value

def v1i8   : ValueType<8,   27>;   //  1 x i8  vector value
def v2i8   : ValueType<16 , 28>;   //  2 x i8  vector value
def v4i8   : ValueType<32 , 29>;   //  4 x i8  vector value
def v8i8   : ValueType<64 , 30>;   //  8 x i8  vector value
def v16i8  : ValueType<128, 31>;   // 16 x i8  vector value
def v32i8  : ValueType<256, 32>;   // 32 x i8  vector value
def v64i8  : ValueType<512, 33>;   // 64 x i8  vector value
def v128i8 : ValueType<1024,34>;   //128 x i8  vector value
def v256i8 : ValueType<2048,35>;   //256 x i8  vector value

def v1i16  : ValueType<16 , 36>;   //  1 x i16 vector value
def v2i16  : ValueType<32 , 37>;   //  2 x i16 vector value
def v4i16  : ValueType<64 , 38>;   //  4 x i16 vector value
def v8i16  : ValueType<128, 39>;   //  8 x i16 vector value
def v16i16 : ValueType<256, 40>;   // 16 x i16 vector value
def v32i16 : ValueType<512, 41>;   // 32 x i16 vector value
def v64i16 : ValueType<1024,42>;   // 64 x i16 vector value
def v128i16: ValueType<2048,43>;   //128 x i16 vector value

def v1i32  : ValueType<32 , 44>;   //  1 x i32 vector value
def v2i32  : ValueType<64 , 45>;   //  2 x i32 vector value
def v4i32  : ValueType<128, 46>;   //  4 x i32 vector value
def v8i32  : ValueType<256, 47>;   //  8 x i32 vector value
def v16i32 : ValueType<512, 48>;   // 16 x i32 vector value
def v32i32 : ValueType<1024,49>;   // 32 x i32 vector value
def v64i32 : ValueType<2048,50>;   // 64 x i32 vector value

def v1i64  : ValueType<64 , 51>;   //  1 x i64 vector value
def v2i64  : ValueType<128, 52>;   //  2 x i64 vector value
def v4i64  : ValueType<256, 53>;   //  4 x i64 vector value
def v8i64  : ValueType<512, 54>;   //  8 x i64 vector value
def v16i64 : ValueType<1024,55>;   // 16 x i64 vector value
def v32i64 : ValueType<2048,56>;   // 32 x i64 vector value

def v1i128 : ValueType<128, 57>;   //  1 x i128 vector value

def nxv1i1  : ValueType<1,   58>;  // n x  1 x i1  vector value
def nxv2i1  : ValueType<2,   59>;  // n x  2 x i1  vector value
def nxv4i1  : ValueType<4,   60>;  // n x  4 x i1  vector value
def nxv8i1  : ValueType<8,   61>;  // n x  8 x i1  vector value
def nxv16i1 : ValueType<16,  62>;  // n x 16 x i1  vector value
def nxv32i1 : ValueType<32,  63>;  // n x 32 x i1  vector value

def nxv1i8  : ValueType<8,   64>;  // n x  1 x i8  vector value
def nxv2i8  : ValueType<16,  65>;  // n x  2 x i8  vector value
def nxv4i8  : ValueType<32,  66>;  // n x  4 x i8  vector value
def nxv8i8  : ValueType<64,  67>;  // n x  8 x i8  vector value
def nxv16i8 : ValueType<128, 68>;  // n x 16 x i8  vector value
def nxv32i8 : ValueType<256, 69>;  // n x 32 x i8  vector value

def nxv1i16 : ValueType<16,  70>;  // n x  1 x i16 vector value
def nxv2i16 : ValueType<32,  71>;  // n x  2 x i16 vector value
def nxv4i16 : ValueType<64,  72>;  // n x  4 x i16 vector value
def nxv8i16 : ValueType<128, 73>;  // n x  8 x i16 vector value
def nxv16i16: ValueType<256, 74>;  // n x 16 x i16 vector value
def nxv32i16: ValueType<512, 75>;  // n x 32 x i16 vector value

def nxv1i32 : ValueType<32,  76>;  // n x  1 x i32 vector value
def nxv2i32 : ValueType<64,  77>;  // n x  2 x i32 vector value
def nxv4i32 : ValueType<128, 78>;  // n x  4 x i32 vector value
def nxv8i32 : ValueType<256, 79>;  // n x  8 x i32 vector value
def nxv16i32: ValueType<512, 80>;  // n x 16 x i32 vector value
def nxv32i32: ValueType<1024,81>;  // n x 32 x i32 vector value

def nxv1i64 : ValueType<64,  82>;  // n x  1 x i64 vector value
def nxv2i64 : ValueType<128, 83>;  // n x  2 x i64 vector value
def nxv4i64 : ValueType<256, 84>;  // n x  4 x i64 vector value
def nxv8i64 : ValueType<512, 85>;  // n x  8 x i64 vector value
def nxv16i64: ValueType<1024,86>;  // n x 16 x i64 vector value
def nxv32i64: ValueType<2048,87>;  // n x 32 x i64 vector value

def v2f16  : ValueType<32 , 88>;   //  2 x f16 vector value
def v4f16  : ValueType<64 , 89>;   //  4 x f16 vector value
def v8f16  : ValueType<128, 90>;   //  8 x f16 vector value
def v1f32  : ValueType<32 , 91>;   //  1 x f32 vector value
def v2f32  : ValueType<64 , 92>;   //  2 x f32 vector value
def v4f32  : ValueType<128, 93>;   //  4 x f32 vector value
def v8f32  : ValueType<256, 94>;   //  8 x f32 vector value
def v16f32 : ValueType<512, 95>;   // 16 x f32 vector value
def v1f64  : ValueType<64,  96>;   //  1 x f64 vector value
def v2f64  : ValueType<128, 97>;   //  2 x f64 vector value
def v4f64  : ValueType<256, 98>;   //  4 x f64 vector value
def v8f64  : ValueType<512, 99>;   //  8 x f64 vector value

def nxv2f16  : ValueType<32 , 100>; // n x  2 x f16 vector value
def nxv4f16  : ValueType<64 , 101>; // n x  4 x f16 vector value
def nxv8f16  : ValueType<128, 102>; // n x  8 x f16 vector value
def nxv1f32  : ValueType<32 , 103>; // n x  1 x f32 vector value
def nxv2f32  : ValueType<64 , 104>; // n x  2 x f32 vector value
def nxv4f32  : ValueType<128, 105>; // n x  4 x f32 vector value
def nxv8f32  : ValueType<256, 106>; // n x  8 x f32 vector value
def nxv16f32 : ValueType<512, 107>; // n x 16 x f32 vector value
def nxv1f64  : ValueType<64,  108>; // n x  1 x f64 vector value
def nxv2f64  : ValueType<128, 109>; // n x  2 x f64 vector value
def nxv4f64  : ValueType<256, 110>; // n x  4 x f64 vector value
def nxv8f64  : ValueType<512, 111>; // n x  8 x f64 vector value

def x86mmx : ValueType<64 , 112>;   // X86 MMX value
def FlagVT : ValueType<0  , 113>;   // Pre-RA sched glue
def isVoid : ValueType<0  , 114>;   // Produces no value
def untyped: ValueType<8  , 115>;   // Produces an untyped value
def ExceptRef: ValueType<0, 116>;   // WebAssembly's except_ref type
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
