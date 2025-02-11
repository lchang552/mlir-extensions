// RUN: imex-opt %s | FileCheck %s
// Verify the printed output can be parsed.
// RUN: imex-opt %s | imex-opt | FileCheck %s
// Verify the generic form can be parsed.
// RUN: imex-opt -mlir-print-op-generic %s | imex-opt | FileCheck %s

#sg_map_fp32 = #xegpu.sg_map<{mma_block_size = [8, 16], wi_layout = [2, 8], wi_data = [1, 2]}>
// CHECK-LABEL: func @test_atomic_rmw({{.*}}) {
func.func @test_atomic_rmw(%src: ui64, %offsets : vector<16 x index>, %value : vector<16x1xf32>, %mask : vector<16xi1>) {
  %1 = xegpu.create_tdesc %src, %offsets: ui64, vector<16 x index> -> !xegpu.tensor_desc<16xf32, #sg_map_fp32>

  // CHECK: xegpu.atomic_rmw
  // CHECK-SAME: !xegpu.tensor_desc<16xf32, #xegpu.sg_map<{mma_block_size = [8, 16], wi_layout = [2, 8], wi_data = [1, 2]}>>, vector<16xi1>, vector<16x1xf32>
  xegpu.atomic_rmw "addf" %1, %mask, %value: !xegpu.tensor_desc<16xf32, #sg_map_fp32>, vector<16xi1>, vector<16x1xf32> -> vector<16x1xf32>

  return
}

// CHECK-LABEL: func @test_atomic_rmw_0({{.*}}) {
func.func @test_atomic_rmw_0(%src: ui64, %offsets : vector<16 x index>, %value : vector<16x2xf32>, %mask : vector<16xi1>) {
  %1 = xegpu.create_tdesc %src, %offsets {chunk_size_per_lane = 2}: ui64, vector<16 x index> -> !xegpu.tensor_desc<16x2xf32, #sg_map_fp32>

  // CHECK: xegpu.atomic_rmw
  // CHECK-SAME: tensor_desc<16x2xf32, #xegpu.sg_map<{mma_block_size = [8, 16], wi_layout = [2, 8], wi_data = [1, 2]}>>, vector<16xi1>, vector<16x2xf32> -> vector<16x2xf32>
  xegpu.atomic_rmw "mulf" %1, %mask, %value : !xegpu.tensor_desc<16x2xf32, #sg_map_fp32>, vector<16xi1>, vector<16x2xf32> -> vector<16x2xf32>

  return
}

// CHECK-LABEL: func @test_atomic_rmw_1({{.*}}) {
func.func @test_atomic_rmw_1(%src: ui64, %offsets : vector<16 x index>, %value : vector<16x2xi32>, %mask : vector<16xi1>) {
  %1 = xegpu.create_tdesc %src, %offsets {chunk_size_per_lane = 2}: ui64, vector<16 x index> -> !xegpu.tensor_desc<16x2xi32, #sg_map_fp32>

  // CHECK: xegpu.atomic_rmw
  // CHECK-SAME: !xegpu.tensor_desc<16x2xi32, #xegpu.sg_map<{mma_block_size = [8, 16], wi_layout = [2, 8], wi_data = [1, 2]}>>, vector<16xi1>, vector<16x2xi32> -> vector<16x2xf32>
  xegpu.atomic_rmw "andi" %1, %mask, %value: !xegpu.tensor_desc<16x2xi32, #sg_map_fp32>, vector<16xi1>, vector<16x2xi32> -> vector<16x2xf32>

  return
}
