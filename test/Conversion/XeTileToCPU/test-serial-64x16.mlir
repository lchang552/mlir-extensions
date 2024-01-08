// /data/lchang1/llvm/llvm-project/build/bin/mlir-opt /data/lchang1/liangliang-test/xetile-to-vector/test-omp.mlir -expand-strided-metadata -lower-affine -convert-vector-to-scf -finalize-memref-to-llvm  -convert-scf-to-cf -convert-cf-to-llvm  -convert-vector-to-llvm -convert-index-to-llvm -convert-arith-to-llvm  -convert-func-to-llvm -convert-openmp-to-llvm  -reconcile-unrealized-casts  | /data/lchang1/llvm/llvm-project/build/bin/mlir-cpu-runner -O3 -e main -entry-point-result=void -shared-libs=/data/lchang1/llvm/llvm-project/build/lib/libmlir_runner_utils.so,/data/lchang1/llvm/llvm-project/build/lib/libmlir_c_runner_utils.so,/data/lchang1/llvm-relesse/llvm/lib/libomp.so

module {
memref.global "private"  @MatrixA : memref<4096x4096xf32> = dense<1.0>
memref.global "private"  @MatrixB : memref<4096x4096xf32> =dense<1.0>
memref.global "private" @MatrixC : memref<4096x4096xf32> =dense<0.0>


func.func private @printMemrefF32(memref<*xf32>)
func.func private @rtclock() -> f64
func.func private @printF64(f64)
func.func @main() {

  %a = memref.get_global @MatrixA : memref<4096x4096xf32>
  %b = memref.get_global @MatrixB : memref<4096x4096xf32>
  %c = memref.get_global @MatrixC : memref<4096x4096xf32>
  
  %c4096 = arith.constant 4096: index
  %c128 = arith.constant 128: index
  %c256 = arith.constant 256: index


%c0 = arith.constant 0: index
%c1 = arith.constant 1: index
%c2 = arith.constant 2: index
%c3 = arith.constant 3: index
%c4 = arith.constant 4: index
%c5 = arith.constant 5: index
%c6 = arith.constant 6: index
%c7 = arith.constant 7: index
%c8 = arith.constant 8: index
%c9 = arith.constant 9: index
%c10 = arith.constant 10: index
%c11 = arith.constant 11: index
%c12 = arith.constant 12: index
%c13 = arith.constant 13: index
%c14 = arith.constant 14: index
%c15 = arith.constant 15: index
%c16 = arith.constant 16: index
%c17 = arith.constant 17: index
%c18 = arith.constant 18: index
%c19 = arith.constant 19: index
%c20 = arith.constant 20: index
%c21 = arith.constant 21: index
%c22 = arith.constant 22: index
%c23 = arith.constant 23: index
%c24 = arith.constant 24: index
%c25 = arith.constant 25: index
%c26 = arith.constant 26: index
%c27 = arith.constant 27: index
%c28 = arith.constant 28: index
%c29 = arith.constant 29: index
%c30 = arith.constant 30: index
%c31 = arith.constant 31: index
%c32 = arith.constant 32: index
%c33 = arith.constant 33: index
%c34 = arith.constant 34: index
%c35 = arith.constant 35: index
%c36 = arith.constant 36: index
%c37 = arith.constant 37: index
%c38 = arith.constant 38: index
%c39 = arith.constant 39: index
%c40 = arith.constant 40: index
%c41 = arith.constant 41: index
%c42 = arith.constant 42: index
%c43 = arith.constant 43: index
%c44 = arith.constant 44: index
%c45 = arith.constant 45: index
%c46 = arith.constant 46: index
%c47 = arith.constant 47: index
%c48 = arith.constant 48: index
%c49 = arith.constant 49: index
%c50 = arith.constant 50: index
%c51 = arith.constant 51: index
%c52 = arith.constant 52: index
%c53 = arith.constant 53: index
%c54 = arith.constant 54: index
%c55 = arith.constant 55: index
%c56 = arith.constant 56: index
%c57 = arith.constant 57: index
%c58 = arith.constant 58: index
%c59 = arith.constant 59: index
%c60 = arith.constant 60: index
%c61 = arith.constant 61: index
%c62 = arith.constant 62: index
%c63 = arith.constant 63: index







  %c64 = arith.constant 64: index

  %i8 = arith.constant 112: i32
  


  scf.for %arg0 = %c0 to %c4096 step %c1 {
      scf.for %arg1 = %c0 to %c4096 step %c1 {
        %int0 = arith.index_cast %arg0 : index to i32
        %int1 = arith.index_cast %arg1 : index to i32
        %c128_i32 = arith.constant 4096 : i32
        %idx0 = arith.muli %int0, %c128_i32 : i32
        %idx1 = arith.addi %int1, %idx0 : i32
        %fp = arith.uitofp %idx1 : i32 to f32
        %cst100 = arith.constant 100.0 : f32
        %val0 = arith.divf %fp, %cst100 : f32
        %cst1 = arith.constant 1.0 : f32
        %val1 = arith.addf %val0, %cst1 : f32
        memref.store %val0, %a[%arg0, %arg1] : memref<4096x4096xf32>
        memref.store %val1, %b[%arg0, %arg1] : memref<4096x4096xf32>
      }
    }



  %t_start = call @rtclock() : () -> f64
  

  %ctest = arith.constant 1: index

  
 

// num_threads(%i8 : i32)
// omp.parallel  {
//   omp.wsloop for (%m):index = (%c0) to (%c4096) step (%c128) 
//   {
    // memref.alloca_scope{
  //   scf.for %n = %c0 to %c4096 step %c128 
  //   {

      // scf.parallel (%m) = (%c0) to (%c4096) step (%c128)
      // {
        // scf.parallel (%n) = (%c0) to (%c4096) step (%c128)
        // {
    //   scf.for %n = %c0 to %c4096 step %c128 
    // {
    
  // omp.parallel num_threads(%i8 : i32){
  // omp.wsloop for (%n):index = (%c0) to (%c4096) step (%c128)


    scf.for %m = %c0 to %c4096 step %c256 
    {

        scf.for %n = %c0 to %c4096 step %c256 
      {
      %index_m = arith.addi %m,%c256 :index
      %index_n = arith.addi %n,%c256 :index

      scf.for %i = %m to %index_m step %c64 {
        scf.for %j = %n to %index_n step %c16 {

        %matrix_c0_t = memref.subview %c[%i,%j][64, 16][1, 1]:  memref<4096x4096xf32> to memref<64x16xf32, strided<[4096, 1], offset: ?>>

       %matrix_c0_0= memref.subview %matrix_c0_t[0, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_0=vector.load %matrix_c0_0[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_1= memref.subview %matrix_c0_t[1, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_1=vector.load %matrix_c0_1[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_2= memref.subview %matrix_c0_t[2, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_2=vector.load %matrix_c0_2[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_3= memref.subview %matrix_c0_t[3, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_3=vector.load %matrix_c0_3[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_4= memref.subview %matrix_c0_t[4, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_4=vector.load %matrix_c0_4[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_5= memref.subview %matrix_c0_t[5, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_5=vector.load %matrix_c0_5[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_6= memref.subview %matrix_c0_t[6, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_6=vector.load %matrix_c0_6[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_7= memref.subview %matrix_c0_t[7, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_7=vector.load %matrix_c0_7[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_8= memref.subview %matrix_c0_t[8, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_8=vector.load %matrix_c0_8[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_9= memref.subview %matrix_c0_t[9, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_9=vector.load %matrix_c0_9[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_10= memref.subview %matrix_c0_t[10, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_10=vector.load %matrix_c0_10[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_11= memref.subview %matrix_c0_t[11, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_11=vector.load %matrix_c0_11[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_12= memref.subview %matrix_c0_t[12, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_12=vector.load %matrix_c0_12[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_13= memref.subview %matrix_c0_t[13, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_13=vector.load %matrix_c0_13[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_14= memref.subview %matrix_c0_t[14, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_14=vector.load %matrix_c0_14[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_15= memref.subview %matrix_c0_t[15, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_15=vector.load %matrix_c0_15[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_16= memref.subview %matrix_c0_t[16, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_16=vector.load %matrix_c0_16[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_17= memref.subview %matrix_c0_t[17, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_17=vector.load %matrix_c0_17[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_18= memref.subview %matrix_c0_t[18, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_18=vector.load %matrix_c0_18[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_19= memref.subview %matrix_c0_t[19, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_19=vector.load %matrix_c0_19[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_20= memref.subview %matrix_c0_t[20, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_20=vector.load %matrix_c0_20[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_21= memref.subview %matrix_c0_t[21, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_21=vector.load %matrix_c0_21[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_22= memref.subview %matrix_c0_t[22, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_22=vector.load %matrix_c0_22[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_23= memref.subview %matrix_c0_t[23, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_23=vector.load %matrix_c0_23[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_24= memref.subview %matrix_c0_t[24, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_24=vector.load %matrix_c0_24[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_25= memref.subview %matrix_c0_t[25, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_25=vector.load %matrix_c0_25[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_26= memref.subview %matrix_c0_t[26, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_26=vector.load %matrix_c0_26[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_27= memref.subview %matrix_c0_t[27, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_27=vector.load %matrix_c0_27[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_28= memref.subview %matrix_c0_t[28, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_28=vector.load %matrix_c0_28[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_29= memref.subview %matrix_c0_t[29, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_29=vector.load %matrix_c0_29[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_30= memref.subview %matrix_c0_t[30, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_30=vector.load %matrix_c0_30[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_31= memref.subview %matrix_c0_t[31, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_31=vector.load %matrix_c0_31[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_32= memref.subview %matrix_c0_t[32, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_32=vector.load %matrix_c0_32[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_33= memref.subview %matrix_c0_t[33, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_33=vector.load %matrix_c0_33[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_34= memref.subview %matrix_c0_t[34, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_34=vector.load %matrix_c0_34[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_35= memref.subview %matrix_c0_t[35, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_35=vector.load %matrix_c0_35[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_36= memref.subview %matrix_c0_t[36, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_36=vector.load %matrix_c0_36[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_37= memref.subview %matrix_c0_t[37, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_37=vector.load %matrix_c0_37[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_38= memref.subview %matrix_c0_t[38, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_38=vector.load %matrix_c0_38[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_39= memref.subview %matrix_c0_t[39, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_39=vector.load %matrix_c0_39[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_40= memref.subview %matrix_c0_t[40, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_40=vector.load %matrix_c0_40[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_41= memref.subview %matrix_c0_t[41, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_41=vector.load %matrix_c0_41[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_42= memref.subview %matrix_c0_t[42, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_42=vector.load %matrix_c0_42[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_43= memref.subview %matrix_c0_t[43, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_43=vector.load %matrix_c0_43[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_44= memref.subview %matrix_c0_t[44, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_44=vector.load %matrix_c0_44[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_45= memref.subview %matrix_c0_t[45, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_45=vector.load %matrix_c0_45[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_46= memref.subview %matrix_c0_t[46, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_46=vector.load %matrix_c0_46[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_47= memref.subview %matrix_c0_t[47, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_47=vector.load %matrix_c0_47[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_48= memref.subview %matrix_c0_t[48, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_48=vector.load %matrix_c0_48[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_49= memref.subview %matrix_c0_t[49, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_49=vector.load %matrix_c0_49[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_50= memref.subview %matrix_c0_t[50, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_50=vector.load %matrix_c0_50[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_51= memref.subview %matrix_c0_t[51, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_51=vector.load %matrix_c0_51[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_52= memref.subview %matrix_c0_t[52, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_52=vector.load %matrix_c0_52[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_53= memref.subview %matrix_c0_t[53, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_53=vector.load %matrix_c0_53[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_54= memref.subview %matrix_c0_t[54, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_54=vector.load %matrix_c0_54[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_55= memref.subview %matrix_c0_t[55, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_55=vector.load %matrix_c0_55[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_56= memref.subview %matrix_c0_t[56, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_56=vector.load %matrix_c0_56[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_57= memref.subview %matrix_c0_t[57, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_57=vector.load %matrix_c0_57[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_58= memref.subview %matrix_c0_t[58, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_58=vector.load %matrix_c0_58[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_59= memref.subview %matrix_c0_t[59, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_59=vector.load %matrix_c0_59[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_60= memref.subview %matrix_c0_t[60, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_60=vector.load %matrix_c0_60[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_61= memref.subview %matrix_c0_t[61, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_61=vector.load %matrix_c0_61[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_62= memref.subview %matrix_c0_t[62, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_62=vector.load %matrix_c0_62[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
%matrix_c0_63= memref.subview %matrix_c0_t[63, 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
%v_c0_63=vector.load %matrix_c0_63[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>


      // omp.parallel num_threads(%i8 : i32){
      // omp.wsloop for (%n):index = (%c0) to (%c4096) step (%c128) 
      // {
        // this is a reduction loop, how to pass the loop carried variables----> parallel loop should not have loop carried variables, each thread needs a private copy of the c submatrix
      
       %scf_out0:64 =  scf.for %k0 = %c0 to %c4096 step %c128 
       iter_args(%v_c1_0=%v_c0_0,%v_c1_1=%v_c0_1,%v_c1_2=%v_c0_2,%v_c1_3=%v_c0_3,%v_c1_4=%v_c0_4,%v_c1_5=%v_c0_5,%v_c1_6=%v_c0_6,%v_c1_7=%v_c0_7,%v_c1_8=%v_c0_8,%v_c1_9=%v_c0_9,%v_c1_10=%v_c0_10,%v_c1_11=%v_c0_11,%v_c1_12=%v_c0_12,%v_c1_13=%v_c0_13,%v_c1_14=%v_c0_14,%v_c1_15=%v_c0_15,%v_c1_16=%v_c0_16,%v_c1_17=%v_c0_17,%v_c1_18=%v_c0_18,%v_c1_19=%v_c0_19,%v_c1_20=%v_c0_20,%v_c1_21=%v_c0_21,%v_c1_22=%v_c0_22,%v_c1_23=%v_c0_23,%v_c1_24=%v_c0_24,%v_c1_25=%v_c0_25,%v_c1_26=%v_c0_26,%v_c1_27=%v_c0_27,%v_c1_28=%v_c0_28,%v_c1_29=%v_c0_29,%v_c1_30=%v_c0_30,%v_c1_31=%v_c0_31,%v_c1_32=%v_c0_32,%v_c1_33=%v_c0_33,%v_c1_34=%v_c0_34,%v_c1_35=%v_c0_35,%v_c1_36=%v_c0_36,%v_c1_37=%v_c0_37,%v_c1_38=%v_c0_38,%v_c1_39=%v_c0_39,%v_c1_40=%v_c0_40,%v_c1_41=%v_c0_41,%v_c1_42=%v_c0_42,%v_c1_43=%v_c0_43,%v_c1_44=%v_c0_44,%v_c1_45=%v_c0_45,%v_c1_46=%v_c0_46,%v_c1_47=%v_c0_47,%v_c1_48=%v_c0_48,%v_c1_49=%v_c0_49,%v_c1_50=%v_c0_50,%v_c1_51=%v_c0_51,%v_c1_52=%v_c0_52,%v_c1_53=%v_c0_53,%v_c1_54=%v_c0_54,%v_c1_55=%v_c0_55,%v_c1_56=%v_c0_56,%v_c1_57=%v_c0_57,%v_c1_58=%v_c0_58,%v_c1_59=%v_c0_59,%v_c1_60=%v_c0_60,%v_c1_61=%v_c0_61,%v_c1_62=%v_c0_62,%v_c1_63=%v_c0_63) -> (vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>) {

            %matrix_a0 = memref.subview %a[%i, %k0][128, 128][1, 1]:  memref<4096x4096xf32> to memref<128x128xf32, strided<[4096, 1], offset:?>>

            %matrix_b0 = memref.subview %b[%k0, %j][128, 16][1, 1]:  memref<4096x4096xf32> to memref<128x16xf32, strided<[4096, 1], offset:?>>
            

            // %k0_prefetch =  arith.addi %k0,%c32 :index
            // %matrix_a0_prefetch = memref.subview %a[%i, %k0_prefetch][32, 32][1, 1]:  memref<4096x4096xf32> to memref<32x32xf32, strided<[4096, 1], offset:?>>

            // %matrix_b0_prefetch = memref.subview %b[%k0_prefetch, %j][32, 16][1, 1]:  memref<4096x4096xf32> to memref<32x16xf32, strided<[4096, 1], offset:?>>

            // memref.prefetch %matrix_a0_prefetch[%c0, %c0], read, locality<3>, data :memref<32x32xf32, strided<[4096, 1], offset:?>>
            // memref.prefetch %matrix_b0_prefetch[%c0, %c0], read, locality<3>, data :memref<32x16xf32, strided<[4096, 1], offset:?>>



            %v_o1_0,%v_o1_1,%v_o1_2,%v_o1_3,%v_o1_4,%v_o1_5,%v_o1_6,%v_o1_7,%v_o1_8,%v_o1_9,%v_o1_10,%v_o1_11,%v_o1_12,%v_o1_13,%v_o1_14,%v_o1_15,%v_o1_16,%v_o1_17,%v_o1_18,%v_o1_19,%v_o1_20,%v_o1_21,%v_o1_22,%v_o1_23,%v_o1_24,%v_o1_25,%v_o1_26,%v_o1_27,%v_o1_28,%v_o1_29,%v_o1_30,%v_o1_31,%v_o1_32,%v_o1_33,%v_o1_34,%v_o1_35,%v_o1_36,%v_o1_37,%v_o1_38,%v_o1_39,%v_o1_40,%v_o1_41,%v_o1_42,%v_o1_43,%v_o1_44,%v_o1_45,%v_o1_46,%v_o1_47,%v_o1_48,%v_o1_49,%v_o1_50,%v_o1_51,%v_o1_52,%v_o1_53,%v_o1_54,%v_o1_55,%v_o1_56,%v_o1_57,%v_o1_58,%v_o1_59,%v_o1_60,%v_o1_61,%v_o1_62,%v_o1_63 = scf.for %k1 = %c0 to %c128 step %c64 iter_args(%v_c2_0=%v_c1_0,%v_c2_1=%v_c1_1,%v_c2_2=%v_c1_2,%v_c2_3=%v_c1_3,%v_c2_4=%v_c1_4,%v_c2_5=%v_c1_5,%v_c2_6=%v_c1_6,%v_c2_7=%v_c1_7,%v_c2_8=%v_c1_8,%v_c2_9=%v_c1_9,%v_c2_10=%v_c1_10,%v_c2_11=%v_c1_11,%v_c2_12=%v_c1_12,%v_c2_13=%v_c1_13,%v_c2_14=%v_c1_14,%v_c2_15=%v_c1_15,%v_c2_16=%v_c1_16,%v_c2_17=%v_c1_17,%v_c2_18=%v_c1_18,%v_c2_19=%v_c1_19,%v_c2_20=%v_c1_20,%v_c2_21=%v_c1_21,%v_c2_22=%v_c1_22,%v_c2_23=%v_c1_23,%v_c2_24=%v_c1_24,%v_c2_25=%v_c1_25,%v_c2_26=%v_c1_26,%v_c2_27=%v_c1_27,%v_c2_28=%v_c1_28,%v_c2_29=%v_c1_29,%v_c2_30=%v_c1_30,%v_c2_31=%v_c1_31,%v_c2_32=%v_c1_32,%v_c2_33=%v_c1_33,%v_c2_34=%v_c1_34,%v_c2_35=%v_c1_35,%v_c2_36=%v_c1_36,%v_c2_37=%v_c1_37,%v_c2_38=%v_c1_38,%v_c2_39=%v_c1_39,%v_c2_40=%v_c1_40,%v_c2_41=%v_c1_41,%v_c2_42=%v_c1_42,%v_c2_43=%v_c1_43,%v_c2_44=%v_c1_44,%v_c2_45=%v_c1_45,%v_c2_46=%v_c1_46,%v_c2_47=%v_c1_47,%v_c2_48=%v_c1_48,%v_c2_49=%v_c1_49,%v_c2_50=%v_c1_50,%v_c2_51=%v_c1_51,%v_c2_52=%v_c1_52,%v_c2_53=%v_c1_53,%v_c2_54=%v_c1_54,%v_c2_55=%v_c1_55,%v_c2_56=%v_c1_56,%v_c2_57=%v_c1_57,%v_c2_58=%v_c1_58,%v_c2_59=%v_c1_59,%v_c2_60=%v_c1_60,%v_c2_61=%v_c1_61,%v_c2_62=%v_c1_62,%v_c2_63=%v_c1_63
            ) -> (vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>){
              %matrix_a1 = memref.subview %matrix_a0[0, %k1][64, 64][1, 1]:  memref<128x128xf32,strided<[4096, 1], offset: ?>> to memref<64x64xf32, strided<[4096, 1], offset:?>>
              %matrix_b1 = memref.subview %matrix_b0[%k1, 0][64, 16][1, 1]:  memref<128x16xf32,strided<[4096, 1], offset: ?>> to memref<64x16xf32, strided<[4096, 1], offset:?>>


            // %k1_prefetch =  arith.addi %k1,%c8 :index     

            // %matrix_a1_prefetch = memref.subview %matrix_a0[0, %k1_prefetch][8, 8][1, 1]:  memref<32x32xf32,strided<[4096, 1], offset: ?>> to memref<8x8xf32, strided<[4096, 1], offset:?>>

            // %matrix_b1_prefetch = memref.subview %matrix_b0[%k1_prefetch, 0][8, 16][1, 1]:  memref<32x16xf32,strided<[4096, 1], offset: ?>> to memref<8x16xf32, strided<[4096, 1], offset:?>>

            // memref.prefetch %matrix_a1_prefetch[%c0, %c0], read, locality<3>, data :memref<8x8xf32, strided<[4096, 1], offset:?>>
            // memref.prefetch %matrix_b1_prefetch[%c0, %c0], read, locality<3>, data :memref<8x16xf32, strided<[4096, 1], offset:?>>


              %v_o0_0,%v_o0_1,%v_o0_2,%v_o0_3,%v_o0_4,%v_o0_5,%v_o0_6,%v_o0_7,%v_o0_8,%v_o0_9,%v_o0_10,%v_o0_11,%v_o0_12,%v_o0_13,%v_o0_14,%v_o0_15,%v_o0_16,%v_o0_17,%v_o0_18,%v_o0_19,%v_o0_20,%v_o0_21,%v_o0_22,%v_o0_23,%v_o0_24,%v_o0_25,%v_o0_26,%v_o0_27,%v_o0_28,%v_o0_29,%v_o0_30,%v_o0_31,%v_o0_32,%v_o0_33,%v_o0_34,%v_o0_35,%v_o0_36,%v_o0_37,%v_o0_38,%v_o0_39,%v_o0_40,%v_o0_41,%v_o0_42,%v_o0_43,%v_o0_44,%v_o0_45,%v_o0_46,%v_o0_47,%v_o0_48,%v_o0_49,%v_o0_50,%v_o0_51,%v_o0_52,%v_o0_53,%v_o0_54,%v_o0_55,%v_o0_56,%v_o0_57,%v_o0_58,%v_o0_59,%v_o0_60,%v_o0_61,%v_o0_62,%v_o0_63 = scf.for %k2= %c0 to %c16 step %c1 iter_args(%v_c3_0=%v_c2_0,%v_c3_1=%v_c2_1,%v_c3_2=%v_c2_2,%v_c3_3=%v_c2_3,%v_c3_4=%v_c2_4,%v_c3_5=%v_c2_5,%v_c3_6=%v_c2_6,%v_c3_7=%v_c2_7,%v_c3_8=%v_c2_8,%v_c3_9=%v_c2_9,%v_c3_10=%v_c2_10,%v_c3_11=%v_c2_11,%v_c3_12=%v_c2_12,%v_c3_13=%v_c2_13,%v_c3_14=%v_c2_14,%v_c3_15=%v_c2_15,%v_c3_16=%v_c2_16,%v_c3_17=%v_c2_17,%v_c3_18=%v_c2_18,%v_c3_19=%v_c2_19,%v_c3_20=%v_c2_20,%v_c3_21=%v_c2_21,%v_c3_22=%v_c2_22,%v_c3_23=%v_c2_23,%v_c3_24=%v_c2_24,%v_c3_25=%v_c2_25,%v_c3_26=%v_c2_26,%v_c3_27=%v_c2_27,%v_c3_28=%v_c2_28,%v_c3_29=%v_c2_29,%v_c3_30=%v_c2_30,%v_c3_31=%v_c2_31,%v_c3_32=%v_c2_32,%v_c3_33=%v_c2_33,%v_c3_34=%v_c2_34,%v_c3_35=%v_c2_35,%v_c3_36=%v_c2_36,%v_c3_37=%v_c2_37,%v_c3_38=%v_c2_38,%v_c3_39=%v_c2_39,%v_c3_40=%v_c2_40,%v_c3_41=%v_c2_41,%v_c3_42=%v_c2_42,%v_c3_43=%v_c2_43,%v_c3_44=%v_c2_44,%v_c3_45=%v_c2_45,%v_c3_46=%v_c2_46,%v_c3_47=%v_c2_47,%v_c3_48=%v_c2_48,%v_c3_49=%v_c2_49,%v_c3_50=%v_c2_50,%v_c3_51=%v_c2_51,%v_c3_52=%v_c2_52,%v_c3_53=%v_c2_53,%v_c3_54=%v_c2_54,%v_c3_55=%v_c2_55,%v_c3_56=%v_c2_56,%v_c3_57=%v_c2_57,%v_c3_58=%v_c2_58,%v_c3_59=%v_c2_59,%v_c3_60=%v_c2_60,%v_c3_61=%v_c2_61,%v_c3_62=%v_c2_62,%v_c3_63=%v_c2_63)-> (vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>){

            
            
            // %k2_prefetch =  arith.addi %k2,%c1 :index     
            //  %matrix_a2_prefetch = memref.subview %matrix_a1[0, %k2_prefetch][8, 1][1, 1]:  memref<8x8xf32,strided<[4096, 1], offset: ?>> to memref<8x1xf32, strided<[4096, 1], offset:?>>
            // %matrix_b2_prefetch = memref.subview %matrix_b1[%k2_prefetch, 0][1, 16][1, 1]:  memref<8x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>

            // memref.prefetch %matrix_a2_prefetch[%c0, %c0], read, locality<3>, data :memref<8x1xf32, strided<[4096, 1], offset:?>>
            // memref.prefetch %matrix_b2_prefetch[%c0, %c0], read, locality<3>, data :memref<1x16xf32, strided<[4096, 1], offset:?>>




                %matrix_a2 = memref.subview %matrix_a1[0, %k2][64, 1][1, 1]:  memref<64x64xf32,strided<[4096, 1], offset: ?>> to memref<64x1xf32, strided<[4096, 1], offset:?>>
                %matrix_b2 = memref.subview %matrix_b1[%k2, 0][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
     
               %f1_a3_0 = memref.load %matrix_a2[%c0,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_1 = memref.load %matrix_a2[%c1,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_2 = memref.load %matrix_a2[%c2,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_3 = memref.load %matrix_a2[%c3,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_4 = memref.load %matrix_a2[%c4,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_5 = memref.load %matrix_a2[%c5,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_6 = memref.load %matrix_a2[%c6,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_7 = memref.load %matrix_a2[%c7,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_8 = memref.load %matrix_a2[%c8,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_9 = memref.load %matrix_a2[%c9,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_10 = memref.load %matrix_a2[%c10,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_11 = memref.load %matrix_a2[%c11,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_12 = memref.load %matrix_a2[%c12,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_13 = memref.load %matrix_a2[%c13,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_14 = memref.load %matrix_a2[%c14,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_15 = memref.load %matrix_a2[%c15,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_16 = memref.load %matrix_a2[%c16,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_17 = memref.load %matrix_a2[%c17,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_18 = memref.load %matrix_a2[%c18,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_19 = memref.load %matrix_a2[%c19,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_20 = memref.load %matrix_a2[%c20,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_21 = memref.load %matrix_a2[%c21,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_22 = memref.load %matrix_a2[%c22,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_23 = memref.load %matrix_a2[%c23,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_24 = memref.load %matrix_a2[%c24,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_25 = memref.load %matrix_a2[%c25,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_26 = memref.load %matrix_a2[%c26,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_27 = memref.load %matrix_a2[%c27,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_28 = memref.load %matrix_a2[%c28,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_29 = memref.load %matrix_a2[%c29,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_30 = memref.load %matrix_a2[%c30,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_31 = memref.load %matrix_a2[%c31,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_32 = memref.load %matrix_a2[%c32,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_33 = memref.load %matrix_a2[%c33,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_34 = memref.load %matrix_a2[%c34,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_35 = memref.load %matrix_a2[%c35,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_36 = memref.load %matrix_a2[%c36,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_37 = memref.load %matrix_a2[%c37,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_38 = memref.load %matrix_a2[%c38,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_39 = memref.load %matrix_a2[%c39,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_40 = memref.load %matrix_a2[%c40,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_41 = memref.load %matrix_a2[%c41,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_42 = memref.load %matrix_a2[%c42,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_43 = memref.load %matrix_a2[%c43,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_44 = memref.load %matrix_a2[%c44,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_45 = memref.load %matrix_a2[%c45,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_46 = memref.load %matrix_a2[%c46,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_47 = memref.load %matrix_a2[%c47,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_48 = memref.load %matrix_a2[%c48,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_49 = memref.load %matrix_a2[%c49,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_50 = memref.load %matrix_a2[%c50,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_51 = memref.load %matrix_a2[%c51,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_52 = memref.load %matrix_a2[%c52,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_53 = memref.load %matrix_a2[%c53,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_54 = memref.load %matrix_a2[%c54,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_55 = memref.load %matrix_a2[%c55,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_56 = memref.load %matrix_a2[%c56,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_57 = memref.load %matrix_a2[%c57,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_58 = memref.load %matrix_a2[%c58,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_59 = memref.load %matrix_a2[%c59,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_60 = memref.load %matrix_a2[%c60,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_61 = memref.load %matrix_a2[%c61,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_62 = memref.load %matrix_a2[%c62,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%f1_a3_63 = memref.load %matrix_a2[%c63,%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>
%v_a4_0 = vector.broadcast %f1_a3_0 : f32 to vector<16xf32>
%v_a4_1 = vector.broadcast %f1_a3_1 : f32 to vector<16xf32>
%v_a4_2 = vector.broadcast %f1_a3_2 : f32 to vector<16xf32>
%v_a4_3 = vector.broadcast %f1_a3_3 : f32 to vector<16xf32>
%v_a4_4 = vector.broadcast %f1_a3_4 : f32 to vector<16xf32>
%v_a4_5 = vector.broadcast %f1_a3_5 : f32 to vector<16xf32>
%v_a4_6 = vector.broadcast %f1_a3_6 : f32 to vector<16xf32>
%v_a4_7 = vector.broadcast %f1_a3_7 : f32 to vector<16xf32>
%v_a4_8 = vector.broadcast %f1_a3_8 : f32 to vector<16xf32>
%v_a4_9 = vector.broadcast %f1_a3_9 : f32 to vector<16xf32>
%v_a4_10 = vector.broadcast %f1_a3_10 : f32 to vector<16xf32>
%v_a4_11 = vector.broadcast %f1_a3_11 : f32 to vector<16xf32>
%v_a4_12 = vector.broadcast %f1_a3_12 : f32 to vector<16xf32>
%v_a4_13 = vector.broadcast %f1_a3_13 : f32 to vector<16xf32>
%v_a4_14 = vector.broadcast %f1_a3_14 : f32 to vector<16xf32>
%v_a4_15 = vector.broadcast %f1_a3_15 : f32 to vector<16xf32>
%v_a4_16 = vector.broadcast %f1_a3_16 : f32 to vector<16xf32>
%v_a4_17 = vector.broadcast %f1_a3_17 : f32 to vector<16xf32>
%v_a4_18 = vector.broadcast %f1_a3_18 : f32 to vector<16xf32>
%v_a4_19 = vector.broadcast %f1_a3_19 : f32 to vector<16xf32>
%v_a4_20 = vector.broadcast %f1_a3_20 : f32 to vector<16xf32>
%v_a4_21 = vector.broadcast %f1_a3_21 : f32 to vector<16xf32>
%v_a4_22 = vector.broadcast %f1_a3_22 : f32 to vector<16xf32>
%v_a4_23 = vector.broadcast %f1_a3_23 : f32 to vector<16xf32>
%v_a4_24 = vector.broadcast %f1_a3_24 : f32 to vector<16xf32>
%v_a4_25 = vector.broadcast %f1_a3_25 : f32 to vector<16xf32>
%v_a4_26 = vector.broadcast %f1_a3_26 : f32 to vector<16xf32>
%v_a4_27 = vector.broadcast %f1_a3_27 : f32 to vector<16xf32>
%v_a4_28 = vector.broadcast %f1_a3_28 : f32 to vector<16xf32>
%v_a4_29 = vector.broadcast %f1_a3_29 : f32 to vector<16xf32>
%v_a4_30 = vector.broadcast %f1_a3_30 : f32 to vector<16xf32>
%v_a4_31 = vector.broadcast %f1_a3_31 : f32 to vector<16xf32>
%v_a4_32 = vector.broadcast %f1_a3_32 : f32 to vector<16xf32>
%v_a4_33 = vector.broadcast %f1_a3_33 : f32 to vector<16xf32>
%v_a4_34 = vector.broadcast %f1_a3_34 : f32 to vector<16xf32>
%v_a4_35 = vector.broadcast %f1_a3_35 : f32 to vector<16xf32>
%v_a4_36 = vector.broadcast %f1_a3_36 : f32 to vector<16xf32>
%v_a4_37 = vector.broadcast %f1_a3_37 : f32 to vector<16xf32>
%v_a4_38 = vector.broadcast %f1_a3_38 : f32 to vector<16xf32>
%v_a4_39 = vector.broadcast %f1_a3_39 : f32 to vector<16xf32>
%v_a4_40 = vector.broadcast %f1_a3_40 : f32 to vector<16xf32>
%v_a4_41 = vector.broadcast %f1_a3_41 : f32 to vector<16xf32>
%v_a4_42 = vector.broadcast %f1_a3_42 : f32 to vector<16xf32>
%v_a4_43 = vector.broadcast %f1_a3_43 : f32 to vector<16xf32>
%v_a4_44 = vector.broadcast %f1_a3_44 : f32 to vector<16xf32>
%v_a4_45 = vector.broadcast %f1_a3_45 : f32 to vector<16xf32>
%v_a4_46 = vector.broadcast %f1_a3_46 : f32 to vector<16xf32>
%v_a4_47 = vector.broadcast %f1_a3_47 : f32 to vector<16xf32>
%v_a4_48 = vector.broadcast %f1_a3_48 : f32 to vector<16xf32>
%v_a4_49 = vector.broadcast %f1_a3_49 : f32 to vector<16xf32>
%v_a4_50 = vector.broadcast %f1_a3_50 : f32 to vector<16xf32>
%v_a4_51 = vector.broadcast %f1_a3_51 : f32 to vector<16xf32>
%v_a4_52 = vector.broadcast %f1_a3_52 : f32 to vector<16xf32>
%v_a4_53 = vector.broadcast %f1_a3_53 : f32 to vector<16xf32>
%v_a4_54 = vector.broadcast %f1_a3_54 : f32 to vector<16xf32>
%v_a4_55 = vector.broadcast %f1_a3_55 : f32 to vector<16xf32>
%v_a4_56 = vector.broadcast %f1_a3_56 : f32 to vector<16xf32>
%v_a4_57 = vector.broadcast %f1_a3_57 : f32 to vector<16xf32>
%v_a4_58 = vector.broadcast %f1_a3_58 : f32 to vector<16xf32>
%v_a4_59 = vector.broadcast %f1_a3_59 : f32 to vector<16xf32>
%v_a4_60 = vector.broadcast %f1_a3_60 : f32 to vector<16xf32>
%v_a4_61 = vector.broadcast %f1_a3_61 : f32 to vector<16xf32>
%v_a4_62 = vector.broadcast %f1_a3_62 : f32 to vector<16xf32>
%v_a4_63 = vector.broadcast %f1_a3_63 : f32 to vector<16xf32>

                %v_b2 = vector.load %matrix_b2[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>


              %fma_0 = vector.fma %v_a4_0, %v_b2, %v_c3_0: vector<16xf32>
%fma_1 = vector.fma %v_a4_1, %v_b2, %v_c3_1: vector<16xf32>
%fma_2 = vector.fma %v_a4_2, %v_b2, %v_c3_2: vector<16xf32>
%fma_3 = vector.fma %v_a4_3, %v_b2, %v_c3_3: vector<16xf32>
%fma_4 = vector.fma %v_a4_4, %v_b2, %v_c3_4: vector<16xf32>
%fma_5 = vector.fma %v_a4_5, %v_b2, %v_c3_5: vector<16xf32>
%fma_6 = vector.fma %v_a4_6, %v_b2, %v_c3_6: vector<16xf32>
%fma_7 = vector.fma %v_a4_7, %v_b2, %v_c3_7: vector<16xf32>
%fma_8 = vector.fma %v_a4_8, %v_b2, %v_c3_8: vector<16xf32>
%fma_9 = vector.fma %v_a4_9, %v_b2, %v_c3_9: vector<16xf32>
%fma_10 = vector.fma %v_a4_10, %v_b2, %v_c3_10: vector<16xf32>
%fma_11 = vector.fma %v_a4_11, %v_b2, %v_c3_11: vector<16xf32>
%fma_12 = vector.fma %v_a4_12, %v_b2, %v_c3_12: vector<16xf32>
%fma_13 = vector.fma %v_a4_13, %v_b2, %v_c3_13: vector<16xf32>
%fma_14 = vector.fma %v_a4_14, %v_b2, %v_c3_14: vector<16xf32>
%fma_15 = vector.fma %v_a4_15, %v_b2, %v_c3_15: vector<16xf32>
%fma_16 = vector.fma %v_a4_16, %v_b2, %v_c3_16: vector<16xf32>
%fma_17 = vector.fma %v_a4_17, %v_b2, %v_c3_17: vector<16xf32>
%fma_18 = vector.fma %v_a4_18, %v_b2, %v_c3_18: vector<16xf32>
%fma_19 = vector.fma %v_a4_19, %v_b2, %v_c3_19: vector<16xf32>
%fma_20 = vector.fma %v_a4_20, %v_b2, %v_c3_20: vector<16xf32>
%fma_21 = vector.fma %v_a4_21, %v_b2, %v_c3_21: vector<16xf32>
%fma_22 = vector.fma %v_a4_22, %v_b2, %v_c3_22: vector<16xf32>
%fma_23 = vector.fma %v_a4_23, %v_b2, %v_c3_23: vector<16xf32>
%fma_24 = vector.fma %v_a4_24, %v_b2, %v_c3_24: vector<16xf32>
%fma_25 = vector.fma %v_a4_25, %v_b2, %v_c3_25: vector<16xf32>
%fma_26 = vector.fma %v_a4_26, %v_b2, %v_c3_26: vector<16xf32>
%fma_27 = vector.fma %v_a4_27, %v_b2, %v_c3_27: vector<16xf32>
%fma_28 = vector.fma %v_a4_28, %v_b2, %v_c3_28: vector<16xf32>
%fma_29 = vector.fma %v_a4_29, %v_b2, %v_c3_29: vector<16xf32>
%fma_30 = vector.fma %v_a4_30, %v_b2, %v_c3_30: vector<16xf32>
%fma_31 = vector.fma %v_a4_31, %v_b2, %v_c3_31: vector<16xf32>
%fma_32 = vector.fma %v_a4_32, %v_b2, %v_c3_32: vector<16xf32>
%fma_33 = vector.fma %v_a4_33, %v_b2, %v_c3_33: vector<16xf32>
%fma_34 = vector.fma %v_a4_34, %v_b2, %v_c3_34: vector<16xf32>
%fma_35 = vector.fma %v_a4_35, %v_b2, %v_c3_35: vector<16xf32>
%fma_36 = vector.fma %v_a4_36, %v_b2, %v_c3_36: vector<16xf32>
%fma_37 = vector.fma %v_a4_37, %v_b2, %v_c3_37: vector<16xf32>
%fma_38 = vector.fma %v_a4_38, %v_b2, %v_c3_38: vector<16xf32>
%fma_39 = vector.fma %v_a4_39, %v_b2, %v_c3_39: vector<16xf32>
%fma_40 = vector.fma %v_a4_40, %v_b2, %v_c3_40: vector<16xf32>
%fma_41 = vector.fma %v_a4_41, %v_b2, %v_c3_41: vector<16xf32>
%fma_42 = vector.fma %v_a4_42, %v_b2, %v_c3_42: vector<16xf32>
%fma_43 = vector.fma %v_a4_43, %v_b2, %v_c3_43: vector<16xf32>
%fma_44 = vector.fma %v_a4_44, %v_b2, %v_c3_44: vector<16xf32>
%fma_45 = vector.fma %v_a4_45, %v_b2, %v_c3_45: vector<16xf32>
%fma_46 = vector.fma %v_a4_46, %v_b2, %v_c3_46: vector<16xf32>
%fma_47 = vector.fma %v_a4_47, %v_b2, %v_c3_47: vector<16xf32>
%fma_48 = vector.fma %v_a4_48, %v_b2, %v_c3_48: vector<16xf32>
%fma_49 = vector.fma %v_a4_49, %v_b2, %v_c3_49: vector<16xf32>
%fma_50 = vector.fma %v_a4_50, %v_b2, %v_c3_50: vector<16xf32>
%fma_51 = vector.fma %v_a4_51, %v_b2, %v_c3_51: vector<16xf32>
%fma_52 = vector.fma %v_a4_52, %v_b2, %v_c3_52: vector<16xf32>
%fma_53 = vector.fma %v_a4_53, %v_b2, %v_c3_53: vector<16xf32>
%fma_54 = vector.fma %v_a4_54, %v_b2, %v_c3_54: vector<16xf32>
%fma_55 = vector.fma %v_a4_55, %v_b2, %v_c3_55: vector<16xf32>
%fma_56 = vector.fma %v_a4_56, %v_b2, %v_c3_56: vector<16xf32>
%fma_57 = vector.fma %v_a4_57, %v_b2, %v_c3_57: vector<16xf32>
%fma_58 = vector.fma %v_a4_58, %v_b2, %v_c3_58: vector<16xf32>
%fma_59 = vector.fma %v_a4_59, %v_b2, %v_c3_59: vector<16xf32>
%fma_60 = vector.fma %v_a4_60, %v_b2, %v_c3_60: vector<16xf32>
%fma_61 = vector.fma %v_a4_61, %v_b2, %v_c3_61: vector<16xf32>
%fma_62 = vector.fma %v_a4_62, %v_b2, %v_c3_62: vector<16xf32>
%fma_63 = vector.fma %v_a4_63, %v_b2, %v_c3_63: vector<16xf32>


                scf.yield %fma_0,%fma_1,%fma_2,%fma_3,%fma_4,%fma_5,%fma_6,%fma_7,%fma_8,%fma_9,%fma_10,%fma_11,%fma_12,%fma_13,%fma_14,%fma_15,%fma_16,%fma_17,%fma_18,%fma_19,%fma_20,%fma_21,%fma_22,%fma_23,%fma_24,%fma_25,%fma_26,%fma_27,%fma_28,%fma_29,%fma_30,%fma_31,%fma_32,%fma_33,%fma_34,%fma_35,%fma_36,%fma_37,%fma_38,%fma_39,%fma_40,%fma_41,%fma_42,%fma_43,%fma_44,%fma_45,%fma_46,%fma_47,%fma_48,%fma_49,%fma_50,%fma_51,%fma_52,%fma_53,%fma_54,%fma_55,%fma_56,%fma_57,%fma_58,%fma_59,%fma_60,%fma_61,%fma_62,%fma_63:vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>
           
              }
              scf.yield %v_o0_0,%v_o0_1,%v_o0_2,%v_o0_3,%v_o0_4,%v_o0_5,%v_o0_6,%v_o0_7,%v_o0_8,%v_o0_9,%v_o0_10,%v_o0_11,%v_o0_12,%v_o0_13,%v_o0_14,%v_o0_15,%v_o0_16,%v_o0_17,%v_o0_18,%v_o0_19,%v_o0_20,%v_o0_21,%v_o0_22,%v_o0_23,%v_o0_24,%v_o0_25,%v_o0_26,%v_o0_27,%v_o0_28,%v_o0_29,%v_o0_30,%v_o0_31,%v_o0_32,%v_o0_33,%v_o0_34,%v_o0_35,%v_o0_36,%v_o0_37,%v_o0_38,%v_o0_39,%v_o0_40,%v_o0_41,%v_o0_42,%v_o0_43,%v_o0_44,%v_o0_45,%v_o0_46,%v_o0_47,%v_o0_48,%v_o0_49,%v_o0_50,%v_o0_51,%v_o0_52,%v_o0_53,%v_o0_54,%v_o0_55,%v_o0_56,%v_o0_57,%v_o0_58,%v_o0_59,%v_o0_60,%v_o0_61,%v_o0_62,%v_o0_63  : vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>

            }
            scf.yield %v_o1_0,%v_o1_1,%v_o1_2,%v_o1_3,%v_o1_4,%v_o1_5,%v_o1_6,%v_o1_7,%v_o1_8,%v_o1_9,%v_o1_10,%v_o1_11,%v_o1_12,%v_o1_13,%v_o1_14,%v_o1_15,%v_o1_16,%v_o1_17,%v_o1_18,%v_o1_19,%v_o1_20,%v_o1_21,%v_o1_22,%v_o1_23,%v_o1_24,%v_o1_25,%v_o1_26,%v_o1_27,%v_o1_28,%v_o1_29,%v_o1_30,%v_o1_31,%v_o1_32,%v_o1_33,%v_o1_34,%v_o1_35,%v_o1_36,%v_o1_37,%v_o1_38,%v_o1_39,%v_o1_40,%v_o1_41,%v_o1_42,%v_o1_43,%v_o1_44,%v_o1_45,%v_o1_46,%v_o1_47,%v_o1_48,%v_o1_49,%v_o1_50,%v_o1_51,%v_o1_52,%v_o1_53,%v_o1_54,%v_o1_55,%v_o1_56,%v_o1_57,%v_o1_58,%v_o1_59,%v_o1_60,%v_o1_61,%v_o1_62,%v_o1_63: vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>,vector<16xf32>

          }
          vector.store %scf_out0#0, %matrix_c0_0[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#1, %matrix_c0_1[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#2, %matrix_c0_2[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#3, %matrix_c0_3[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#4, %matrix_c0_4[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#5, %matrix_c0_5[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#6, %matrix_c0_6[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#7, %matrix_c0_7[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#8, %matrix_c0_8[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#9, %matrix_c0_9[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#10, %matrix_c0_10[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#11, %matrix_c0_11[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#12, %matrix_c0_12[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#13, %matrix_c0_13[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#14, %matrix_c0_14[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#15, %matrix_c0_15[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#16, %matrix_c0_16[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#17, %matrix_c0_17[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#18, %matrix_c0_18[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#19, %matrix_c0_19[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#20, %matrix_c0_20[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#21, %matrix_c0_21[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#22, %matrix_c0_22[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#23, %matrix_c0_23[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#24, %matrix_c0_24[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#25, %matrix_c0_25[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#26, %matrix_c0_26[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#27, %matrix_c0_27[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#28, %matrix_c0_28[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#29, %matrix_c0_29[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#30, %matrix_c0_30[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#31, %matrix_c0_31[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#32, %matrix_c0_32[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#33, %matrix_c0_33[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#34, %matrix_c0_34[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#35, %matrix_c0_35[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#36, %matrix_c0_36[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#37, %matrix_c0_37[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#38, %matrix_c0_38[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#39, %matrix_c0_39[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#40, %matrix_c0_40[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#41, %matrix_c0_41[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#42, %matrix_c0_42[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#43, %matrix_c0_43[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#44, %matrix_c0_44[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#45, %matrix_c0_45[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#46, %matrix_c0_46[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#47, %matrix_c0_47[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#48, %matrix_c0_48[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#49, %matrix_c0_49[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#50, %matrix_c0_50[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#51, %matrix_c0_51[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#52, %matrix_c0_52[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#53, %matrix_c0_53[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#54, %matrix_c0_54[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#55, %matrix_c0_55[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#56, %matrix_c0_56[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#57, %matrix_c0_57[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#58, %matrix_c0_58[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#59, %matrix_c0_59[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#60, %matrix_c0_60[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#61, %matrix_c0_61[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#62, %matrix_c0_62[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
vector.store %scf_out0#63, %matrix_c0_63[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>
            
        }
      }
      }
    }

      // memref.alloca_scope.return
      
      // }
    //   omp.yield
    //  }
  //   }
  // }
//   omp.terminator
// }

          
  %t_end = call @rtclock() : () -> f64
  %t = arith.subf %t_end, %t_start : f64
  %f = arith.constant 10000.0: f64
  %a0 = arith.mulf %t, %f : f64


  call @printF64(%a0) : (f64) -> ()


  // %print_output = memref.cast %c : memref<4096x4096xf32> to memref<*xf32>
  // call @printMemrefF32(%print_output) : (memref<*xf32>) -> ()
  return
}

}

