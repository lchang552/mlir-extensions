// /data/lchang1/llvm/llvm-project/build/bin/mlir-opt /data/lchang1/liangliang-test/xetile-to-vector/test-omp.mlir -expand-strided-metadata -lower-affine -convert-vector-to-scf -finalize-memref-to-llvm  -convert-scf-to-cf -convert-cf-to-llvm  -convert-vector-to-llvm -convert-index-to-llvm -convert-arith-to-llvm  -convert-func-to-llvm -convert-openmp-to-llvm  -reconcile-unrealized-casts  | /data/lchang1/llvm/llvm-project/build/bin/mlir-cpu-runner -O3 -e main -entry-point-result=void -shared-libs=/data/lchang1/llvm/llvm-project/build/lib/libmlir_runner_utils.so,/data/lchang1/llvm/llvm-project/build/lib/libmlir_c_runner_utils.so,/data/lchang1/llvm-relesse/llvm/lib/libomp.so

module {
memref.global "private"  @MatrixA : memref<256x256xf32> = dense<1.0>
memref.global "private"  @MatrixB : memref<256x256xf32> =dense<1.0>
memref.global "private" @MatrixC : memref<256x256xf32> =dense<0.0>


func.func private @printMemrefF32(memref<*xf32>)
func.func private @rtclock() -> f64
func.func private @printF64(f64)
func.func @main() {

  %a = memref.get_global @MatrixA : memref<256x256xf32>
  %b = memref.get_global @MatrixB : memref<256x256xf32>
  %c = memref.get_global @MatrixC : memref<256x256xf32>
  %c0 = arith.constant 0: index
  %c1 = arith.constant 1: index
  %c2 = arith.constant 2: index
  %c3 = arith.constant 3: index
  %c4 = arith.constant 4: index
  %c5 = arith.constant 5: index
  %c6 = arith.constant 6: index
  %c7 = arith.constant 7: index
  %c256 = arith.constant 256: index
  %c128 = arith.constant 128: index

  %c32 = arith.constant 32: index

  %c15 = arith.constant 15: index
  %c14 = arith.constant 14: index
  %c13 = arith.constant 13: index
  %c12 = arith.constant 12: index
  %c11 = arith.constant 11: index
  %c10 = arith.constant 10: index
  %c9 = arith.constant 9: index


  %c64 = arith.constant 64: index
  %c16 = arith.constant 16: index
  %c8 = arith.constant 8: index
  %i8 = arith.constant 4: i32
  


  scf.for %arg0 = %c0 to %c256 step %c1 {
      scf.for %arg1 = %c0 to %c256 step %c1 {
        %int0 = arith.index_cast %arg0 : index to i32
        %int1 = arith.index_cast %arg1 : index to i32
        %c128_i32 = arith.constant 256 : i32
        %idx0 = arith.muli %int0, %c128_i32 : i32
        %idx1 = arith.addi %int1, %idx0 : i32
        %fp = arith.uitofp %idx1 : i32 to f32
        %cst100 = arith.constant 100.0 : f32
        %val0 = arith.divf %fp, %cst100 : f32
        %cst1 = arith.constant 1.0 : f32
        %val1 = arith.addf %val0, %cst1 : f32
        memref.store %val0, %a[%arg0, %arg1] : memref<256x256xf32>
        memref.store %val1, %b[%arg0, %arg1] : memref<256x256xf32>
      }
    }



  %t_start = call @rtclock() : () -> f64
  

  %ctest = arith.constant 10000: index

    scf.for %test = %c0 to %ctest step %c1 
    {
  omp.parallel num_threads(%i8 : i32){
  omp.wsloop for (%m, %n) : index = (%c0, %c0) to (%c256, %c256) step (%c128, %c128) 
  {
      memref.alloca_scope{
      %index_m = arith.addi %m,%c128 :index
      %index_n = arith.addi %n,%c128 :index

      scf.for %m0 = %m to %index_m step %c64 {
        scf.for %n0 = %n to %index_n step %c128 {

          %index_m0 = arith.addi %m0,%c64 :index
          %index_n0 = arith.addi %n0,%c128 :index



      scf.for %i = %m0 to %index_m0 step %c16 {
        scf.for %j = %n0 to %index_n0 step %c16 {

        %matrix_c0_t = memref.subview %c[%i,%j][16, 16][1, 1]:  memref<256x256xf32> to memref<16x16xf32, strided<[256, 1], offset: ?>>

        %matrix_c0_0= memref.subview %matrix_c0_t[0, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_1= memref.subview %matrix_c0_t[1, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_2= memref.subview %matrix_c0_t[2, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_3= memref.subview %matrix_c0_t[3, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_4= memref.subview %matrix_c0_t[4, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_5= memref.subview %matrix_c0_t[5, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_6= memref.subview %matrix_c0_t[6, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_7= memref.subview %matrix_c0_t[7, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_8= memref.subview %matrix_c0_t[8, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_9= memref.subview %matrix_c0_t[9, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_10= memref.subview %matrix_c0_t[10, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_11= memref.subview %matrix_c0_t[11, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_12= memref.subview %matrix_c0_t[12, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_13= memref.subview %matrix_c0_t[13, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_14= memref.subview %matrix_c0_t[14, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        %matrix_c0_15= memref.subview %matrix_c0_t[15, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
        
        %v_c0_0=vector.load %matrix_c0_0[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_1=vector.load %matrix_c0_1[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_2=vector.load %matrix_c0_2[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_3=vector.load %matrix_c0_3[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_4=vector.load %matrix_c0_4[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_5=vector.load %matrix_c0_5[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_6=vector.load %matrix_c0_6[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_7=vector.load %matrix_c0_7[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_8=vector.load %matrix_c0_8[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_9=vector.load %matrix_c0_9[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_10=vector.load %matrix_c0_10[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_11=vector.load %matrix_c0_11[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_12=vector.load %matrix_c0_12[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_13=vector.load %matrix_c0_13[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_14=vector.load %matrix_c0_14[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
        %v_c0_15=vector.load %matrix_c0_15[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>

      
        // this is a reduction loop, how to pass the loop carried variables----> parallel loop should not have loop carried variables, each thread needs a private copy of the c submatrix
      
       %scf_out0:16 =  scf.for %k0 = %c0 to %c256 step %c16 
       iter_args(%v_c1_0=%v_c0_0,%v_c1_1=%v_c0_1,%v_c1_2=%v_c0_2,%v_c1_3=%v_c0_3,%v_c1_4=%v_c0_4,%v_c1_5=%v_c0_5,%v_c1_6=%v_c0_6,%v_c1_7=%v_c0_7,%v_c1_8=%v_c0_8,%v_c1_9=%v_c0_9,%v_c1_10=%v_c0_10,%v_c1_11=%v_c0_11,%v_c1_12=%v_c0_12,%v_c1_13=%v_c0_13,%v_c1_14=%v_c0_14,%v_c1_15=%v_c0_15) -> (vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>,vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>) {

            %matrix_a1 = memref.subview %a[%i, %k0][16, 16][1, 1]:  memref<256x256xf32> to memref<16x16xf32, strided<[256, 1], offset:?>>

            %matrix_b1 = memref.subview %b[%k0, %j][16, 16][1, 1]:  memref<256x256xf32> to memref<16x16xf32, strided<[256, 1], offset:?>>


            // %k0_prefetch =  arith.addi %k0,%c16 :index
            // %matrix_a0_prefetch = memref.subview %a[%i, %k0_prefetch][16, 16][1, 1]:  memref<256x256xf32> to memref<16x16xf32, strided<[256, 1], offset:?>>

            // %matrix_b0_prefetch = memref.subview %b[%k0_prefetch, %j][16, 16][1, 1]:  memref<256x256xf32> to memref<16x16xf32, strided<[256, 1], offset:?>>

            // memref.prefetch %matrix_a0_prefetch[%c0, %c0], read, locality<1>, data :memref<16x16xf32, strided<[256, 1], offset:?>>
            // memref.prefetch %matrix_b0_prefetch[%c0, %c0], read, locality<1>, data :memref<16x16xf32, strided<[256, 1], offset:?>>

            
              %v_o0_0,%v_o0_1,%v_o0_2,%v_o0_3,%v_o0_4,%v_o0_5,%v_o0_6,%v_o0_7,%v_o0_8,%v_o0_9,%v_o0_10,%v_o0_11,%v_o0_12,%v_o0_13,%v_o0_14,%v_o0_15 = 
              scf.for %k2= %c0 to %c16 step %c1 iter_args
              (%v_c3_0=%v_c1_0,%v_c3_1=%v_c1_1,%v_c3_2=%v_c1_2,%v_c3_3=%v_c1_3,%v_c3_4=%v_c1_4,%v_c3_5=%v_c1_5,%v_c3_6=%v_c1_6,%v_c3_7=%v_c1_7,%v_c3_8=%v_c1_8,%v_c3_9=%v_c1_9,%v_c3_10=%v_c1_10,%v_c3_11=%v_c1_11,%v_c3_12=%v_c1_12,%v_c3_13=%v_c1_13,%v_c3_14=%v_c1_14,%v_c3_15=%v_c1_15)-> (vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>,vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>){

            
            
            // %k2_prefetch =  arith.addi %k2,%c1 :index     
            //  %matrix_a2_prefetch = memref.subview %matrix_a1[0, %k2_prefetch][8, 1][1, 1]:  memref<8x8xf32,strided<[256, 1], offset: ?>> to memref<8x1xf32, strided<[256, 1], offset:?>>
            // %matrix_b2_prefetch = memref.subview %matrix_b1[%k2_prefetch, 0][1, 16][1, 1]:  memref<8x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>

            // memref.prefetch %matrix_a2_prefetch[%c0, %c0], read, locality<3>, data :memref<8x1xf32, strided<[256, 1], offset:?>>
            // memref.prefetch %matrix_b2_prefetch[%c0, %c0], read, locality<3>, data :memref<1x16xf32, strided<[256, 1], offset:?>>




                %matrix_a2 = memref.subview %matrix_a1[0, %k2][16, 1][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<16x1xf32, strided<[256, 1], offset:?>>
                %matrix_b2 = memref.subview %matrix_b1[%k2, 0][1, 16][1, 1]:  memref<16x16xf32,strided<[256, 1], offset: ?>> to memref<1x16xf32, strided<[256, 1], offset:?>>
     
                %f1_a3_0 = memref.load %matrix_a2[%c0,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_1 = memref.load %matrix_a2[%c1,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_2 = memref.load %matrix_a2[%c2,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_3 = memref.load %matrix_a2[%c3,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_4 = memref.load %matrix_a2[%c4,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_5 = memref.load %matrix_a2[%c5,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_6 = memref.load %matrix_a2[%c6,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_7 = memref.load %matrix_a2[%c7,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_8 = memref.load %matrix_a2[%c8,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_9 = memref.load %matrix_a2[%c9,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_10 = memref.load %matrix_a2[%c10,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_11 = memref.load %matrix_a2[%c11,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_12 = memref.load %matrix_a2[%c12,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_13 = memref.load %matrix_a2[%c13,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_14 = memref.load %matrix_a2[%c14,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>
                %f1_a3_15 = memref.load %matrix_a2[%c15,%c0] :memref<16x1xf32, strided<[256, 1], offset:?>>


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

                %v_b2 = vector.load %matrix_b2[%c0, %c0] : memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>


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


                scf.yield %fma_0,%fma_1,%fma_2,%fma_3,%fma_4,%fma_5,%fma_6,%fma_7,%fma_8,%fma_9,%fma_10,%fma_11,%fma_12,%fma_13,%fma_14,%fma_15:vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>,vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>
           
              }
            scf.yield %v_o0_0,%v_o0_1,%v_o0_2,%v_o0_3,%v_o0_4,%v_o0_5,%v_o0_6,%v_o0_7,%v_o0_8,%v_o0_9,%v_o0_10,%v_o0_11,%v_o0_12,%v_o0_13,%v_o0_14,%v_o0_15: vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>,vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>
          }
          vector.store %scf_out0#0, %matrix_c0_0[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#1, %matrix_c0_1[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#2, %matrix_c0_2[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#3, %matrix_c0_3[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#4, %matrix_c0_4[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#5, %matrix_c0_5[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#6, %matrix_c0_6[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#7, %matrix_c0_7[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#8, %matrix_c0_8[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#9, %matrix_c0_9[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#10, %matrix_c0_10[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#11, %matrix_c0_11[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#12, %matrix_c0_12[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#13, %matrix_c0_13[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#14, %matrix_c0_14[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#15, %matrix_c0_15[%c0,%c0] :memref<1x16xf32, strided<[256, 1], offset:?>>, vector<16xf32>
            
        }
      }
        }
      }
      }
        omp.yield
      }
        omp.terminator
      }
    }
          
  %t_end = call @rtclock() : () -> f64
  %t = arith.subf %t_end, %t_start : f64
  %f = arith.constant 0.1: f64
  %a0 = arith.mulf %t, %f : f64


  call @printF64(%a0) : (f64) -> ()


  // %print_output = memref.cast %c : memref<256x256xf32> to memref<*xf32>
  // call @printMemrefF32(%print_output) : (memref<*xf32>) -> ()
  return
}

}

