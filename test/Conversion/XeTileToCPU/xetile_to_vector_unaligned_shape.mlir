// memref.global constant @__constant_8x16xf32 : memref<8x16xf32> = dense<"0x0000662E6632CD3466360038CD389A39663A333B003C663CCD3C333D9A3D003E663ECD3E333F9A3F0040334066409A40CD400041334166419A41CD410042334266429A42CD420043334366439A43CD4300441A4433444D44664480449A44B344CD44E64400451A4533454D45664580459A45B345CD45E64500461A4633464D46664680469A46B346CD46E64600471A4733474D47664780479A47B347CD47E64700480D481A482648334840484D485A486648734880488D489A48A648B348C048CD48DA48E648F34800490D491A492649334940494D495A496649734980498D499A49A649B349C049CD49DA49E649F349004A0D4A1A4A264A334A404A4D4A5A4A">
module {
memref.global "private" constant @MatrixA : memref<1024x1017xf32> = dense<1.0>
memref.global "private" constant @MatrixB : memref<1017x1017xf32> =dense<1.0>
memref.global "private" @MatrixC : memref<1024x1017xf32> =dense<0.0>

memref.global "private" constant @temp_v1 : memref<16xf32> = dense<0.0>


func.func private @printMemrefF32(memref<*xf32>)
func.func @entry() {

  %mem1 = memref.alloca() : memref<16xf32>
  %c0 = arith.constant 0: index
  %c1 = arith.constant 1: index
  %c1024 = arith.constant 1024: index
  %c1017 = arith.constant 1017: index
  %c128 = arith.constant 128: index
  %c32 = arith.constant 32: index
  %c16 = arith.constant 16: index
  %c8 = arith.constant 8: index
  %true = arith.constant 1: i1

  %a = memref.get_global @MatrixA : memref<1024x1017xf32>
  %b = memref.get_global @MatrixB : memref<1017x1017xf32>
  %c = memref.get_global @MatrixC : memref<1024x1017xf32>

  
  // %m_1 = arith.constant dense<"0x0000662E6632CD3466360038CD389A39663A333B003C663CCD3C333D9A3D003E663ECD3E333F9A3F0040334066409A40CD400041334166419A41CD410042334266429A42CD420043334366439A43CD4300441A4433444D44664480449A44B344CD44E64400451A4533454D45664580459A45B345CD45E64500461A4633464D46664680469A46B346CD46E64600471A4733474D47664780479A47B347CD47E64700480D481A482648334840484D485A486648734880488D489A48A648B348C048CD48DA48E648F34800490D491A492649334940494D495A496649734980498D499A49A649B349C049CD49DA49E649F349004A0D4A1A4A264A334A404A4D4A5A4A664A734A804A8D4A9A4AA64AB34AC04ACD4ADA4AE64AF34A004B0D4B1A4B264B334B404B4D4B5A4B664B734B804B8D4B9A4BA64BB34BC04BCD4BDA4BE64BF34B004C064C0D4C134C1A4C204C264C2D4C334C3A4C404C464C4D4C534C5A4C604C664C6D4C734C7A4C804C864C8D4C934C9A4CA04CA64CAD4CB34CBA4CC04CC64CCD4CD34CDA4CE04CE64CED4CF34CFA4C004D064D0D4D134D1A4D204D264D2D4D334D3A4D404D464D4D4D534D5A4D604D664D6D4D734D7A4D804D864D8D4D934D9A4DA04DA64DAD4DB34DBA4DC04DC64DCD4DD34DDA4DE04DE64DED4DF34DFA4D004E064E0D4E134E1A4E204E264E2D4E334E3A4E404E464E4D4E534E5A4E604E">: vector<16x16xf32>


  //1024
  scf.for %m = %c0 to %c1024 step %c128 {
    scf.for %n = %c0 to %c1017 step %c128 {

      %index_m = arith.addi %m,%c128 :index
      %index_n = arith.addi %n,%c128 :index

      // %n * %c128
      scf.for %i = %m to %index_m step %c16 {
        // %mm_128 = arith.muli %m, %c128 : index
        // %mi_16 = arith.muli %i,%c16 : index
        // %lhs_i = arith.addi %m,%mi_16 : index
        %cond_i = arith.cmpi slt, %i,%c1017 : index
        scf.if %cond_i
        {

        scf.for %j = %n to %index_n step %c16 {
          
          // %mn_128 = arith.muli %n, %c128 : index
          // %mj_16 = arith.muli %j,%c16 : index
          // %lhs_j = arith.addi %n,%mj_16 : index
          %cond_j = arith.cmpi slt, %j, %c1017 : index

          scf.if %cond_j{

          // memref.subview  memref<1024x1024xf32> [%i, %j] -> memref<16x16xf32>---> c(mxn)

          %matrix_c0 = memref.subview %c[%i,%j][16, 16][1, 1]:  memref<1024x1017xf32> to memref<16x16xf32, strided<[1017, 1], offset: ?>>
         
          scf.for %k0 = %c0 to %c1017 step %c32 {

        // %mk0_32 = arith.muli %k0, %c32 : index
        %cond_k0 = arith.cmpi slt, %k0, %c1017  : index
        scf.if %cond_k0{

            // memref.subview  memref<1024x1024xf32> [%i, %k0] -> memref<16x32xf32>---> a(mxk)
            %matrix_a0 = memref.subview %a[%i, %k0][16, 32][1, 1]:  memref<1024x1017xf32> to memref<16x32xf32, strided<[1017, 1], offset:?>>
            // memref.subview  memref<1024x1024xf32> [%k0, %j] -> memref<32x16xf32>---> b(kxn)
            %matrix_b0 = memref.subview %b[%k0, %j][32, 16][1, 1]:  memref<1017x1017xf32> to memref<32x16xf32, strided<[1017, 1], offset:?>>
            


            scf.for %k1 = %c0 to %c32 step %c8 {

              // %mk1_8 = arith.muli %k1, %c8 : index
            %lhs_k1 = arith.addi %k0,%k1 : index
            %cond_k1 = arith.cmpi slt, %lhs_k1, %c1017 : index

            scf.if %cond_k1{


              %matrix_a1 = memref.subview %matrix_a0[0, %k1][16, 8][1, 1]:  memref<16x32xf32,strided<[1017, 1], offset: ?>> to memref<16x8xf32, strided<[1017, 1], offset:?>>

              %matrix_b1 = memref.subview %matrix_b0[%k1, 0][8, 16][1, 1]:  memref<32x16xf32,strided<[1017, 1], offset: ?>> to memref<8x16xf32, strided<[1017, 1], offset:?>>


              scf.for %k2= %c0 to %c8 step %c1 {

                %matrix_a2 = memref.subview %matrix_a1[0, %k2][16, 1][1, 1]:  memref<16x8xf32,strided<[1017, 1], offset: ?>> to memref<16x1xf32, strided<[1017, 1], offset:?>>

                %matrix_b2 = memref.subview %matrix_b1[%k2, 0][1, 16][1, 1]:  memref<8x16xf32,strided<[1017, 1], offset: ?>> to memref<1x16xf32, strided<[1017, 1], offset:?>>

                %lhs_k2 = arith.addi %lhs_k1,%k2 : index
                %cond_k2 = arith.cmpi slt, %lhs_k2, %c1017 : index


                scf.if %cond_k2{


                %lhs_j2 = arith.addi %j,%c16 : index
                %cond_j2 = arith.cmpi slt, %lhs_j2, %c1017 : index
                scf.if %cond_j2{
                  %vtmp = vector.load %matrix_b2[%c0, %c0] : memref<1x16xf32, strided<[1017, 1], offset:?>>, vector<16xf32> // a
                  // vector.print %vtmp : vector<16xf32> 
                  vector.store %vtmp, %mem1[%c0] :memref<16xf32>, vector<16xf32>

                }else // masked load
                {
                  %f0 = arith.constant 0.0: f32
                  %pass_thru = vector.broadcast %f0 : f32 to vector<16xf32>
                  %mask = vector.constant_mask [8] : vector<16xi1>
                  %vtmp = vector.maskedload %matrix_b2[%c0, %c0], %mask, %pass_thru : memref<1x16xf32, strided<[1017, 1], offset:?>>, vector<16xi1>, vector<16xf32> into vector<16xf32>
                  // vector.print %vtmp : vector<16xf32> 
                  vector.store %vtmp, %mem1[%c0] :memref<16xf32>, vector<16xf32>
                }

                %v1 = vector.load %mem1[%c0] : memref<16xf32>, vector<16xf32>

                scf.for %i_1= %c0 to %c16 step %c1 {
                  %matrix_a3 = memref.subview %matrix_a2[%i_1, 0][1, 1][1, 1]:  memref<16x1xf32,strided<[1017, 1], offset: ?>> to memref<1x1xf32, strided<[1017, 1], offset:?>>

                  %matrix_c1 = memref.subview %matrix_c0[%i_1, 0 ][1, 16][1, 1]:  memref<16x16xf32,strided<[1017, 1], offset: ?>> to memref<1x16xf32, strided<[1017, 1], offset:?>>
                  
                  %v2 = vector.load %matrix_a3[%c0, %c0] : memref<1x1xf32, strided<[1017, 1], offset:?>>, vector<1xf32>
                  
                  %v3 = vector.broadcast %v2 : vector<1xf32> to vector<16xf32> //b

                  %v4 = vector.load %matrix_c1[%c0, %c0] : memref<1x16xf32, strided<[1017, 1], offset:?>>, vector<16xf32>
                
                  %fma = vector.fma %v1, %v3, %v4: vector<16xf32>  // no need to accumulate
                  
                  vector.store %fma, %matrix_c1[%c0,%c0] :memref<1x16xf32, strided<[1017, 1], offset:?>>, vector<16xf32>
            
                  } //fma
                } //k2 check
              } //scf k2
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

  %print_output = memref.cast %c : memref<1024x1017xf32> to memref<*xf32>
  call @printMemrefF32(%print_output) : (memref<*xf32>) -> ()
  return
}
}