// /data/lchang1/llvm/llvm-project/build/bin/mlir-opt /data/lchang1/liangliang-test/xetile-to-vector/test-serial.mlir -expand-strided-metadata -lower-affine -convert-vector-to-scf -convert-scf-to-cf -convert-cf-to-llvm  -convert-vector-to-llvm -convert-index-to-llvm  -convert-arith-to-llvm -finalize-memref-to-llvm -convert-func-to-llvm -reconcile-unrealized-casts | /data/lchang1/llvm/llvm-project/build/bin/mlir-cpu-runner -O3 -e main -entry-point-result=void -shared-libs=/data/lchang1/llvm/llvm-project/build/lib/libmlir_runner_utils.so,/data/lchang1/llvm/llvm-project/build/lib/libmlir_c_runner_utils.so -dump-object-file -object-filename=test.o

// objdump -d test.o > test.asm

module {
memref.global "private" constant @MatrixA : memref<1024x1024xf32> = dense<1.0>
memref.global "private" constant @MatrixB : memref<1024x1024xf32> =dense<1.0>
memref.global "private" @MatrixC : memref<1024x1024xf32> =dense<0.0>


func.func private @printMemrefF32(memref<*xf32>)
func.func private @rtclock() -> f64
func.func private @printF64(f64)
func.func @main() {

  %t_start = call @rtclock() : () -> f64
  %c0 = arith.constant 0: index
  %c1 = arith.constant 1: index
  %c2 = arith.constant 2: index
  %c3 = arith.constant 3: index
  %c4 = arith.constant 4: index
  %c5 = arith.constant 5: index
  %c6 = arith.constant 6: index
  %c7 = arith.constant 7: index
  %c1024 = arith.constant 1024: index
  %c128 = arith.constant 128: index
  %c32 = arith.constant 32: index
  %c16 = arith.constant 16: index
  %c8 = arith.constant 8: index
  


  %a = memref.get_global @MatrixA : memref<1024x1024xf32>
  %b = memref.get_global @MatrixB : memref<1024x1024xf32>
  %c = memref.get_global @MatrixC : memref<1024x1024xf32>

  // scf.for %m = %c0 to %c1024 step %c128 
  // {
  //   scf.for %n = %c0 to %c1024 step %c128 
  //   {

      scf.parallel (%m, %n) = (%c0, %c0) to (%c1024, %c1024) step (%c128, %c128)
      {

      %index_m = arith.addi %m,%c128 :index
      %index_n = arith.addi %n,%c128 :index

      scf.for %i = %m to %index_m step %c8 {
        scf.for %j = %n to %index_n step %c16 {
          %matrix_c0 = memref.subview %c[%i,%j][16, 16][1, 1]:  memref<1024x1024xf32> to memref<16x16xf32, strided<[1024, 1], offset: ?>>

        %matrix_c0_t = memref.subview %c[%i,%j][8, 16][1, 1]:  memref<1024x1024xf32> to memref<8x16xf32, strided<[1024, 1], offset: ?>>

        %matrix_c0_0 = memref.subview %matrix_c0_t[0, 0 ][1, 16][1, 1]:  memref<8x16xf32,strided<[1024, 1], offset: ?>> to memref<1x16xf32, strided<[1024, 1], offset:?>>
        %matrix_c0_1 = memref.subview %matrix_c0_t[1, 0 ][1, 16][1, 1]:  memref<8x16xf32,strided<[1024, 1], offset: ?>> to memref<1x16xf32, strided<[1024, 1], offset:?>>
        %matrix_c0_2 = memref.subview %matrix_c0_t[2, 0 ][1, 16][1, 1]:  memref<8x16xf32,strided<[1024, 1], offset: ?>> to memref<1x16xf32, strided<[1024, 1], offset:?>>
        %matrix_c0_3 = memref.subview %matrix_c0_t[3, 0 ][1, 16][1, 1]:  memref<8x16xf32,strided<[1024, 1], offset: ?>> to memref<1x16xf32, strided<[1024, 1], offset:?>>
        %matrix_c0_4 = memref.subview %matrix_c0_t[4, 0 ][1, 16][1, 1]:  memref<8x16xf32,strided<[1024, 1], offset: ?>> to memref<1x16xf32, strided<[1024, 1], offset:?>>
        %matrix_c0_5 = memref.subview %matrix_c0_t[5, 0 ][1, 16][1, 1]:  memref<8x16xf32,strided<[1024, 1], offset: ?>> to memref<1x16xf32, strided<[1024, 1], offset:?>>
        %matrix_c0_6 = memref.subview %matrix_c0_t[6, 0 ][1, 16][1, 1]:  memref<8x16xf32,strided<[1024, 1], offset: ?>> to memref<1x16xf32, strided<[1024, 1], offset:?>>
        %matrix_c0_7 = memref.subview %matrix_c0_t[7, 0 ][1, 16][1, 1]:  memref<8x16xf32,strided<[1024, 1], offset: ?>> to memref<1x16xf32, strided<[1024, 1], offset:?>>
        
        
        %v_c0_0 = vector.load %matrix_c0_0[%c0, %c0] : memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
        %v_c0_1 = vector.load %matrix_c0_1[%c0, %c0] : memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
        %v_c0_2 = vector.load %matrix_c0_2[%c0, %c0] : memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
        %v_c0_3 = vector.load %matrix_c0_3[%c0, %c0] : memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
        %v_c0_4 = vector.load %matrix_c0_4[%c0, %c0] : memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
        %v_c0_5 = vector.load %matrix_c0_5[%c0, %c0] : memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
        %v_c0_6 = vector.load %matrix_c0_6[%c0, %c0] : memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
        %v_c0_7 = vector.load %matrix_c0_7[%c0, %c0] : memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>


      
       %scf_out0:8 =  scf.for %k0 = %c0 to %c1024 step %c32 
       iter_args(%v_c1_0=%v_c0_0, %v_c1_1=%v_c0_1, %v_c1_2=%v_c0_2, %v_c1_3=%v_c0_3, %v_c1_4=%v_c0_4, %v_c1_5=%v_c0_5, %v_c1_6=%v_c0_6, %v_c1_7=%v_c0_7) -> (vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>) {

            %matrix_a0 = memref.subview %a[%i, %k0][32, 32][1, 1]:  memref<1024x1024xf32> to memref<32x32xf32, strided<[1024, 1], offset:?>>

            %matrix_b0 = memref.subview %b[%k0, %j][32, 16][1, 1]:  memref<1024x1024xf32> to memref<32x16xf32, strided<[1024, 1], offset:?>>
            

            %v_o1_0, %v_o1_1, %v_o1_2, %v_o1_3, %v_o1_4, %v_o1_5, %v_o1_6, %v_o1_7 = scf.for %k1 = %c0 to %c32 step %c8 iter_args(%v_c2_0=%v_c1_0, %v_c2_1=%v_c1_1, %v_c2_2=%v_c1_2, %v_c2_3=%v_c1_3, %v_c2_4=%v_c1_4, %v_c2_5=%v_c1_5, %v_c2_6=%v_c1_6, %v_c2_7=%v_c1_7) -> (vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>){
              %matrix_a1 = memref.subview %matrix_a0[0, %k1][8, 8][1, 1]:  memref<32x32xf32,strided<[1024, 1], offset: ?>> to memref<8x8xf32, strided<[1024, 1], offset:?>>
              %matrix_b1 = memref.subview %matrix_b0[%k1, 0][8, 16][1, 1]:  memref<32x16xf32,strided<[1024, 1], offset: ?>> to memref<8x16xf32, strided<[1024, 1], offset:?>>


              %v_o0_0, %v_o0_1, %v_o0_2, %v_o0_3, %v_o0_4, %v_o0_5, %v_o0_6, %v_o0_7 = scf.for %k2= %c0 to %c8 step %c1 iter_args(%v_c3_0=%v_c2_0, %v_c3_1=%v_c2_1, %v_c3_2=%v_c2_2, %v_c3_3=%v_c2_3, %v_c3_4=%v_c2_4, %v_c3_5=%v_c2_5, %v_c3_6=%v_c2_6, %v_c3_7=%v_c2_7)-> (vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>){

                %matrix_a2 = memref.subview %matrix_a1[0, %k2][8, 1][1, 1]:  memref<8x8xf32,strided<[1024, 1], offset: ?>> to memref<8x1xf32, strided<[1024, 1], offset:?>>
                %matrix_b2 = memref.subview %matrix_b1[%k2, 0][1, 16][1, 1]:  memref<8x16xf32,strided<[1024, 1], offset: ?>> to memref<1x16xf32, strided<[1024, 1], offset:?>>
     
                %f1_a3_0 = memref.load %matrix_a2[%c0,%c0] :memref<8x1xf32, strided<[1024, 1], offset:?>>
                %f1_a3_1 = memref.load %matrix_a2[%c1,%c0] :memref<8x1xf32, strided<[1024, 1], offset:?>>
                %f1_a3_2 = memref.load %matrix_a2[%c2,%c0] :memref<8x1xf32, strided<[1024, 1], offset:?>>
                %f1_a3_3 = memref.load %matrix_a2[%c3,%c0] :memref<8x1xf32, strided<[1024, 1], offset:?>>
                %f1_a3_4 = memref.load %matrix_a2[%c4,%c0] :memref<8x1xf32, strided<[1024, 1], offset:?>>
                %f1_a3_5 = memref.load %matrix_a2[%c5,%c0] :memref<8x1xf32, strided<[1024, 1], offset:?>>
                %f1_a3_6 = memref.load %matrix_a2[%c6,%c0] :memref<8x1xf32, strided<[1024, 1], offset:?>>
                %f1_a3_7 = memref.load %matrix_a2[%c7,%c0] :memref<8x1xf32, strided<[1024, 1], offset:?>>

                %v_a4_0 = vector.broadcast %f1_a3_0 : f32 to vector<16xf32>
                %v_a4_1 = vector.broadcast %f1_a3_1 : f32 to vector<16xf32>
                %v_a4_2 = vector.broadcast %f1_a3_2 : f32 to vector<16xf32>
                %v_a4_3 = vector.broadcast %f1_a3_3 : f32 to vector<16xf32>
                %v_a4_4 = vector.broadcast %f1_a3_4 : f32 to vector<16xf32>
                %v_a4_5 = vector.broadcast %f1_a3_5 : f32 to vector<16xf32>
                %v_a4_6 = vector.broadcast %f1_a3_6 : f32 to vector<16xf32>
                %v_a4_7 = vector.broadcast %f1_a3_7 : f32 to vector<16xf32>

                %v_b2 = vector.load %matrix_b2[%c0, %c0] : memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
                %fma_0 = vector.fma %v_a4_0, %v_b2, %v_c3_0: vector<16xf32>
                %fma_1 = vector.fma %v_a4_1, %v_b2, %v_c3_1: vector<16xf32>
                %fma_2 = vector.fma %v_a4_2, %v_b2, %v_c3_2: vector<16xf32>
                %fma_3 = vector.fma %v_a4_3, %v_b2, %v_c3_3: vector<16xf32>
                %fma_4 = vector.fma %v_a4_4, %v_b2, %v_c3_4: vector<16xf32>
                %fma_5 = vector.fma %v_a4_5, %v_b2, %v_c3_5: vector<16xf32>
                %fma_6 = vector.fma %v_a4_6, %v_b2, %v_c3_6: vector<16xf32>
                %fma_7 = vector.fma %v_a4_7, %v_b2, %v_c3_7: vector<16xf32>


                scf.yield %fma_0, %fma_1, %fma_2, %fma_3, %fma_4, %fma_5, %fma_6, %fma_7:vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>
           
              }
              scf.yield %v_o0_0, %v_o0_1, %v_o0_2, %v_o0_3, %v_o0_4, %v_o0_5, %v_o0_6, %v_o0_7  : vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>
            }
            scf.yield %v_o1_0, %v_o1_1, %v_o1_2, %v_o1_3, %v_o1_4, %v_o1_5, %v_o1_6, %v_o1_7 : vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>, vector<16xf32>
          }
          vector.store %scf_out0#0, %matrix_c0_0[%c0,%c0] :memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#1, %matrix_c0_1[%c0,%c0] :memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#2, %matrix_c0_2[%c0,%c0] :memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#3, %matrix_c0_3[%c0,%c0] :memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#4, %matrix_c0_4[%c0,%c0] :memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#5, %matrix_c0_5[%c0,%c0] :memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#6, %matrix_c0_6[%c0,%c0] :memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
          vector.store %scf_out0#7, %matrix_c0_7[%c0,%c0] :memref<1x16xf32, strided<[1024, 1], offset:?>>, vector<16xf32>
            
        }
      }

     }
  //   }
  // }

          
  %t_end = call @rtclock() : () -> f64
  %t = arith.subf %t_end, %t_start : f64
  %f = arith.constant 10000.0: f64
  %a0 = arith.mulf %t, %f : f64


  call @printF64(%a0) : (f64) -> ()


  %print_output = memref.cast %c : memref<1024x1024xf32> to memref<*xf32>
  // call @printMemrefF32(%print_output) : (memref<*xf32>) -> ()
  return
}

}

