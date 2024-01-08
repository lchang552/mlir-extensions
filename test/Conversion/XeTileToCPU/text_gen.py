

# %matrix_c0_0 = memref.subview %matrix_c0_t[0, 0 ][1, 16][1, 1]:  memref<8x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>
for i in range(64):
    s = '%v_c0_'+str(i)+'=vector.load %matrix_c0_'+str(i)+'[%c0, %c0] : memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>'
    m = '%matrix_c0_' + str(i)+ '= memref.subview %matrix_c0_t[' + str(i) + ', 0 ][1, 16][1, 1]:  memref<64x16xf32,strided<[4096, 1], offset: ?>> to memref<1x16xf32, strided<[4096, 1], offset:?>>'

    print(m)
    print(s)

v = ''
for i in range(64):
    v = v+ '%v_c1_' + str(i)+'=%v_c0_' + str(i)+','
print(v)


v = ''
for i in range(64):
    v = v+ '%v_o1_'+ str(i)+','
print(v)


v = ''
for i in range(64):
    v = v+ '%v_c2_' + str(i)+'=%v_c1_' + str(i)+','
print(v)


v = ''
for i in range(64):
    v = v+ '%v_o0_'+ str(i)+','
print(v)


v = ''
for i in range(64):
    v = v+ '%v_c3_' + str(i)+'=%v_c2_' + str(i)+','
print(v)


# '%f1_a3_'+str(i)+' = memref.load %matrix_a2[%c'+str(i)+',%c0] :memref<16x1xf32, strided<[4096, 1], offset:?>>'


for i in range(64):
    s = '%f1_a3_'+str(i)+' = memref.load %matrix_a2[%c'+str(i)+',%c0] :memref<64x1xf32, strided<[4096, 1], offset:?>>'
    print(s)


# '%v_a4_'+str(i)+' = vector.broadcast %f1_a3_'+str(i)+' : f32 to vector<16xf32>'

for i in range(64):
    s = '%v_a4_'+str(i)+' = vector.broadcast %f1_a3_'+str(i)+' : f32 to vector<16xf32>'
    print(s)


for i in range(64):
    s = '%fma_'+str(i)+' = vector.fma %v_a4_'+str(i)+', %v_b2, %v_c3_'+str(i)+': vector<16xf32>'
    print(s)

v = ''
for i in range(64):
    v = v+ '%fma_'+ str(i)+','
print(v)





for i in range(64):
    s = 'vector.store %scf_out0#'+str(i)+', %matrix_c0_'+str(i)+'[%c0,%c0] :memref<1x16xf32, strided<[4096, 1], offset:?>>, vector<16xf32>'
    print(s)


v = ''
for i in range(64):
    v = v+ 'vector<16xf32>,'
print(v)


# '%c'+str(i)+' = arith.constant '+str(i)+': index'
for i in range(64):
    s = '%c'+str(i)+' = arith.constant '+str(i)+': index'
    print(s)