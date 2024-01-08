module {
memref.global "private" constant @MatrixA : memref<1024x1016xf32> = dense<1.0>
memref.global "private" constant @MatrixB : memref<1016x1016xf32> =dense<1.0>
memref.global "private" @MatrixC : memref<1024x1016xf32> =dense<0.0>

memref.global "private" constant @temp_v1 : memref<16xf32> = dense<0.0>


func.func private @printMemrefF32(memref<*xf32>)
func.func @entry() {


  %c0 = arith.constant 0: index
  %c1 = arith.constant 1: index
  %c1024 = arith.constant 1024: index
  %c1016 = arith.constant 1016: index
  %c128 = arith.constant 128: index
  %c32 = arith.constant 32: index
  %c16 = arith.constant 16: index
  %c8 = arith.constant 8: index
  %true = arith.constant 1: i1

  %mem1 = memref.alloca() : memref<16xf32>

  %a = memref.get_global @MatrixA : memref<1024x1016xf32>
  %b = memref.get_global @MatrixB : memref<1016x1016xf32>
  %c = memref.get_global @MatrixC : memref<1024x1016xf32>


  //1024
  scf.for %m = %c0 to %c1024 step %c128 {
    scf.for %n = %c0 to %c1016 step %c128 {

      %index_m = arith.addi %m,%c128 :index
      %index_n = arith.addi %n,%c128 :index


      scf.for %i = %m to %index_m step %c16 {

        %cond_i = arith.cmpi slt, %i,%c1016 : index
        scf.if %cond_i
        {

        scf.for %j = %n to %index_n step %c16 {
          
          %cond_j = arith.cmpi slt, %j, %c1016 : index

          scf.if %cond_j{


          %matrix_c0 = memref.subview %c[%i,%j][16, 16][1, 1]:  memref<1024x1016xf32> to memref<16x16xf32, strided<[1016, 1], offset: ?>>
       
          scf.for %k0 = %c0 to %c1016 step %c32 {

        %cond_k0 = arith.cmpi slt, %k0, %c1016  : index
        scf.if %cond_k0{

            %matrix_a0 = memref.subview %a[%i, %k0][16, 32][1, 1]:  memref<1024x1016xf32> to memref<16x32xf32, strided<[1016, 1], offset:?>>
            %matrix_b0 = memref.subview %b[%k0, %j][32, 16][1, 1]:  memref<1016x1016xf32> to memref<32x16xf32, strided<[1016, 1], offset:?>>
            


            scf.for %k1 = %c0 to %c32 step %c8 {

            %lhs_k1 = arith.addi %k0,%k1 : index
            %cond_k1 = arith.cmpi slt, %lhs_k1, %c1016 : index

            scf.if %cond_k1{


              %matrix_a1 = memref.subview %matrix_a0[0, %k1][16, 8][1, 1]:  memref<16x32xf32,strided<[1016, 1], offset: ?>> to memref<16x8xf32, strided<[1016, 1], offset:?>>

              %matrix_b1 = memref.subview %matrix_b0[%k1, 0][8, 16][1, 1]:  memref<32x16xf32,strided<[1016, 1], offset: ?>> to memref<8x16xf32, strided<[1016, 1], offset:?>>


              scf.for %k2= %c0 to %c8 step %c1 {

                %matrix_a2 = memref.subview %matrix_a1[0, %k2][16, 1][1, 1]:  memref<16x8xf32,strided<[1016, 1], offset: ?>> to memref<16x1xf32, strided<[1016, 1], offset:?>>

                %matrix_b2 = memref.subview %matrix_b1[%k2, 0][1, 16][1, 1]:  memref<8x16xf32,strided<[1016, 1], offset: ?>> to memref<1x16xf32, strided<[1016, 1], offset:?>>

                %a_k2 = arith.addi %lhs_k1,%k2 : index
                %lhs_k2 = arith.addi %a_k2,%c16 : index
                %cond_k2 = arith.cmpi slt, %lhs_k2, %c1016 : index
        

                scf.if %cond_k2{
                  %vtmp = vector.load %matrix_b2[%c0, %c0] : memref<1x16xf32, strided<[1016, 1], offset:?>>, vector<16xf32> // a
                  vector.store %vtmp, %mem1[%c0] :memref<16xf32>, vector<16xf32>
                }else
                {
                  %vtmp = vector.load %matrix_b2[%c0, %c0] : memref<1x16xf32, strided<[1016, 1], offset:?>>, vector<16xf32> // a
                  vector.store %vtmp, %mem1[%c0] :memref<16xf32>, vector<16xf32>
                }
                %v1 = vector.load %mem1[%c0] : memref<16xf32>, vector<16xf32>


                
                scf.for %i_1= %c0 to %c16 step %c1 {

                  %matrix_a3 = memref.subview %matrix_a2[%i_1, 0][1, 1][1, 1]:  memref<16x1xf32,strided<[1016, 1], offset: ?>> to memref<1x1xf32, strided<[1016, 1], offset:?>>

                  %matrix_c1 = memref.subview %matrix_c0[%i_1, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[1016, 1], offset: ?>> to memref<1x16xf32, strided<[1016, 1], offset:?>>
                  
                  
                  %v2 = vector.load %matrix_a3[%c0, %c0] : memref<1x1xf32, strided<[1016, 1], offset:?>>, vector<1xf32>                  

                  %v3 = vector.broadcast %v2 : vector<1xf32> to vector<16xf32> //b
                  
                  %v4 = vector.load %matrix_c1[%c0, %c0] : memref<1x16xf32, strided<[1016, 1], offset:?>>, vector<16xf32>
                
                  %fma = vector.fma %v1, %v3, %v4: vector<16xf32>  // no need to accumulate                  
                  vector.store %fma, %matrix_c1[%c0,%c0] :memref<1x16xf32, strided<[1016, 1], offset:?>>, vector<16xf32>
            
                }
              }
            } // k1 check
            } //scf k1
          } // k0 check
          
          }// scf k0

          }// j check
        } // scf j
        } // i check
      }// scf i
    } // scf n
  }// scf m

  %print_output = memref.cast %c : memref<1024x1016xf32> to memref<*xf32>
  call @printMemrefF32(%print_output) : (memref<*xf32>) -> ()
  return
}
}