
test.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	41 57                	push   %r15
   7:	41 56                	push   %r14
   9:	41 55                	push   %r13
   b:	41 54                	push   %r12
   d:	53                   	push   %rbx
   e:	48 83 ec 28          	sub    $0x28,%rsp
  12:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  19:	00 00 00 
  1c:	ff d0                	call   *%rax
  1e:	c5 fb 11 44 24 10    	vmovsd %xmm0,0x10(%rsp)
  24:	45 31 f6             	xor    %r14d,%r14d
  27:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  2e:	00 00 00 
  31:	48 8d 88 1c 70 00 00 	lea    0x701c(%rax),%rcx
  38:	48 89 0c 24          	mov    %rcx,(%rsp)
  3c:	48 05 00 70 00 00    	add    $0x7000,%rax
  42:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  47:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
  4e:	00 00 00 
  51:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
  58:	0f 1f 84 00 00 00 00 
  5f:	00 
  60:	49 8d 86 80 00 00 00 	lea    0x80(%r14),%rax
  67:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  6c:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  71:	45 31 c9             	xor    %r9d,%r9d
  74:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
  79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  80:	4d 8d 91 80 00 00 00 	lea    0x80(%r9),%r10
  87:	48 8b 14 24          	mov    (%rsp),%rdx
  8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  90:	4d 89 f7             	mov    %r14,%r15
  93:	49 c1 e7 0a          	shl    $0xa,%r15
  97:	48 89 f8             	mov    %rdi,%rax
  9a:	4d 89 cd             	mov    %r9,%r13
  9d:	0f 1f 00             	nopl   (%rax)
  a0:	4b 8d 6c 3d 00       	lea    0x0(%r13,%r15,1),%rbp
  a5:	62 f1 7c 48 10 04 ae 	vmovups (%rsi,%rbp,4),%zmm0
  ac:	62 f1 7c 48 10 4c ae 	vmovups 0x1000(%rsi,%rbp,4),%zmm1
  b3:	40 
  b4:	62 f1 7c 48 10 94 ae 	vmovups 0x2000(%rsi,%rbp,4),%zmm2
  bb:	00 20 00 00 
  bf:	62 f1 7c 48 10 9c ae 	vmovups 0x3000(%rsi,%rbp,4),%zmm3
  c6:	00 30 00 00 
  ca:	62 f1 7c 48 10 a4 ae 	vmovups 0x4000(%rsi,%rbp,4),%zmm4
  d1:	00 40 00 00 
  d5:	62 f1 7c 48 10 ac ae 	vmovups 0x5000(%rsi,%rbp,4),%zmm5
  dc:	00 50 00 00 
  e0:	62 f1 7c 48 10 b4 ae 	vmovups 0x6000(%rsi,%rbp,4),%zmm6
  e7:	00 60 00 00 
  eb:	62 f1 7c 48 10 bc ae 	vmovups 0x7000(%rsi,%rbp,4),%zmm7
  f2:	00 70 00 00 
  f6:	49 89 d3             	mov    %rdx,%r11
  f9:	49 89 c0             	mov    %rax,%r8
  fc:	31 c9                	xor    %ecx,%ecx
  fe:	66 90                	xchg   %ax,%ax
 100:	48 c7 c3 f8 ff ff ff 	mov    $0xfffffffffffffff8,%rbx
 107:	4d 89 c4             	mov    %r8,%r12
 10a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 110:	62 51 7c 48 10 84 24 	vmovups -0x7000(%r12),%zmm8
 117:	00 90 ff ff 
 11b:	62 d2 3d 58 b8 84 9b 	vfmadd231ps -0x6ffc(%r11,%rbx,4){1to16},%zmm8,%zmm0
 122:	04 90 ff ff 
 126:	62 d2 3d 58 b8 8c 9b 	vfmadd231ps -0x5ffc(%r11,%rbx,4){1to16},%zmm8,%zmm1
 12d:	04 a0 ff ff 
 131:	62 d2 3d 58 b8 94 9b 	vfmadd231ps -0x4ffc(%r11,%rbx,4){1to16},%zmm8,%zmm2
 138:	04 b0 ff ff 
 13c:	62 d2 3d 58 b8 9c 9b 	vfmadd231ps -0x3ffc(%r11,%rbx,4){1to16},%zmm8,%zmm3
 143:	04 c0 ff ff 
 147:	62 d2 3d 58 b8 a4 9b 	vfmadd231ps -0x2ffc(%r11,%rbx,4){1to16},%zmm8,%zmm4
 14e:	04 d0 ff ff 
 152:	62 d2 3d 58 b8 ac 9b 	vfmadd231ps -0x1ffc(%r11,%rbx,4){1to16},%zmm8,%zmm5
 159:	04 e0 ff ff 
 15d:	62 d2 3d 58 b8 b4 9b 	vfmadd231ps -0xffc(%r11,%rbx,4){1to16},%zmm8,%zmm6
 164:	04 f0 ff ff 
 168:	62 d2 3d 58 b8 7c 9b 	vfmadd231ps 0x4(%r11,%rbx,4){1to16},%zmm8,%zmm7
 16f:	01 
 170:	62 51 7c 48 10 84 24 	vmovups -0x6000(%r12),%zmm8
 177:	00 a0 ff ff 
 17b:	62 d2 3d 58 b8 84 9b 	vfmadd231ps -0x6ff8(%r11,%rbx,4){1to16},%zmm8,%zmm0
 182:	08 90 ff ff 
 186:	62 d2 3d 58 b8 8c 9b 	vfmadd231ps -0x5ff8(%r11,%rbx,4){1to16},%zmm8,%zmm1
 18d:	08 a0 ff ff 
 191:	62 d2 3d 58 b8 94 9b 	vfmadd231ps -0x4ff8(%r11,%rbx,4){1to16},%zmm8,%zmm2
 198:	08 b0 ff ff 
 19c:	62 d2 3d 58 b8 9c 9b 	vfmadd231ps -0x3ff8(%r11,%rbx,4){1to16},%zmm8,%zmm3
 1a3:	08 c0 ff ff 
 1a7:	62 d2 3d 58 b8 a4 9b 	vfmadd231ps -0x2ff8(%r11,%rbx,4){1to16},%zmm8,%zmm4
 1ae:	08 d0 ff ff 
 1b2:	62 d2 3d 58 b8 ac 9b 	vfmadd231ps -0x1ff8(%r11,%rbx,4){1to16},%zmm8,%zmm5
 1b9:	08 e0 ff ff 
 1bd:	62 d2 3d 58 b8 b4 9b 	vfmadd231ps -0xff8(%r11,%rbx,4){1to16},%zmm8,%zmm6
 1c4:	08 f0 ff ff 
 1c8:	62 d2 3d 58 b8 7c 9b 	vfmadd231ps 0x8(%r11,%rbx,4){1to16},%zmm8,%zmm7
 1cf:	02 
 1d0:	62 51 7c 48 10 84 24 	vmovups -0x5000(%r12),%zmm8
 1d7:	00 b0 ff ff 
 1db:	62 d2 3d 58 b8 84 9b 	vfmadd231ps -0x6ff4(%r11,%rbx,4){1to16},%zmm8,%zmm0
 1e2:	0c 90 ff ff 
 1e6:	62 d2 3d 58 b8 8c 9b 	vfmadd231ps -0x5ff4(%r11,%rbx,4){1to16},%zmm8,%zmm1
 1ed:	0c a0 ff ff 
 1f1:	62 d2 3d 58 b8 94 9b 	vfmadd231ps -0x4ff4(%r11,%rbx,4){1to16},%zmm8,%zmm2
 1f8:	0c b0 ff ff 
 1fc:	62 d2 3d 58 b8 9c 9b 	vfmadd231ps -0x3ff4(%r11,%rbx,4){1to16},%zmm8,%zmm3
 203:	0c c0 ff ff 
 207:	62 d2 3d 58 b8 a4 9b 	vfmadd231ps -0x2ff4(%r11,%rbx,4){1to16},%zmm8,%zmm4
 20e:	0c d0 ff ff 
 212:	62 d2 3d 58 b8 ac 9b 	vfmadd231ps -0x1ff4(%r11,%rbx,4){1to16},%zmm8,%zmm5
 219:	0c e0 ff ff 
 21d:	62 d2 3d 58 b8 b4 9b 	vfmadd231ps -0xff4(%r11,%rbx,4){1to16},%zmm8,%zmm6
 224:	0c f0 ff ff 
 228:	62 d2 3d 58 b8 7c 9b 	vfmadd231ps 0xc(%r11,%rbx,4){1to16},%zmm8,%zmm7
 22f:	03 
 230:	62 51 7c 48 10 84 24 	vmovups -0x4000(%r12),%zmm8
 237:	00 c0 ff ff 
 23b:	62 d2 3d 58 b8 84 9b 	vfmadd231ps -0x6ff0(%r11,%rbx,4){1to16},%zmm8,%zmm0
 242:	10 90 ff ff 
 246:	62 d2 3d 58 b8 8c 9b 	vfmadd231ps -0x5ff0(%r11,%rbx,4){1to16},%zmm8,%zmm1
 24d:	10 a0 ff ff 
 251:	62 d2 3d 58 b8 94 9b 	vfmadd231ps -0x4ff0(%r11,%rbx,4){1to16},%zmm8,%zmm2
 258:	10 b0 ff ff 
 25c:	62 d2 3d 58 b8 9c 9b 	vfmadd231ps -0x3ff0(%r11,%rbx,4){1to16},%zmm8,%zmm3
 263:	10 c0 ff ff 
 267:	62 d2 3d 58 b8 a4 9b 	vfmadd231ps -0x2ff0(%r11,%rbx,4){1to16},%zmm8,%zmm4
 26e:	10 d0 ff ff 
 272:	62 d2 3d 58 b8 ac 9b 	vfmadd231ps -0x1ff0(%r11,%rbx,4){1to16},%zmm8,%zmm5
 279:	10 e0 ff ff 
 27d:	62 d2 3d 58 b8 b4 9b 	vfmadd231ps -0xff0(%r11,%rbx,4){1to16},%zmm8,%zmm6
 284:	10 f0 ff ff 
 288:	62 d2 3d 58 b8 7c 9b 	vfmadd231ps 0x10(%r11,%rbx,4){1to16},%zmm8,%zmm7
 28f:	04 
 290:	62 51 7c 48 10 84 24 	vmovups -0x3000(%r12),%zmm8
 297:	00 d0 ff ff 
 29b:	62 d2 3d 58 b8 84 9b 	vfmadd231ps -0x6fec(%r11,%rbx,4){1to16},%zmm8,%zmm0
 2a2:	14 90 ff ff 
 2a6:	62 d2 3d 58 b8 8c 9b 	vfmadd231ps -0x5fec(%r11,%rbx,4){1to16},%zmm8,%zmm1
 2ad:	14 a0 ff ff 
 2b1:	62 d2 3d 58 b8 94 9b 	vfmadd231ps -0x4fec(%r11,%rbx,4){1to16},%zmm8,%zmm2
 2b8:	14 b0 ff ff 
 2bc:	62 d2 3d 58 b8 9c 9b 	vfmadd231ps -0x3fec(%r11,%rbx,4){1to16},%zmm8,%zmm3
 2c3:	14 c0 ff ff 
 2c7:	62 d2 3d 58 b8 a4 9b 	vfmadd231ps -0x2fec(%r11,%rbx,4){1to16},%zmm8,%zmm4
 2ce:	14 d0 ff ff 
 2d2:	62 d2 3d 58 b8 ac 9b 	vfmadd231ps -0x1fec(%r11,%rbx,4){1to16},%zmm8,%zmm5
 2d9:	14 e0 ff ff 
 2dd:	62 d2 3d 58 b8 b4 9b 	vfmadd231ps -0xfec(%r11,%rbx,4){1to16},%zmm8,%zmm6
 2e4:	14 f0 ff ff 
 2e8:	62 d2 3d 58 b8 7c 9b 	vfmadd231ps 0x14(%r11,%rbx,4){1to16},%zmm8,%zmm7
 2ef:	05 
 2f0:	62 51 7c 48 10 44 24 	vmovups -0x2000(%r12),%zmm8
 2f7:	80 
 2f8:	62 d2 3d 58 b8 84 9b 	vfmadd231ps -0x6fe8(%r11,%rbx,4){1to16},%zmm8,%zmm0
 2ff:	18 90 ff ff 
 303:	62 d2 3d 58 b8 8c 9b 	vfmadd231ps -0x5fe8(%r11,%rbx,4){1to16},%zmm8,%zmm1
 30a:	18 a0 ff ff 
 30e:	62 d2 3d 58 b8 94 9b 	vfmadd231ps -0x4fe8(%r11,%rbx,4){1to16},%zmm8,%zmm2
 315:	18 b0 ff ff 
 319:	62 d2 3d 58 b8 9c 9b 	vfmadd231ps -0x3fe8(%r11,%rbx,4){1to16},%zmm8,%zmm3
 320:	18 c0 ff ff 
 324:	62 d2 3d 58 b8 a4 9b 	vfmadd231ps -0x2fe8(%r11,%rbx,4){1to16},%zmm8,%zmm4
 32b:	18 d0 ff ff 
 32f:	62 d2 3d 58 b8 ac 9b 	vfmadd231ps -0x1fe8(%r11,%rbx,4){1to16},%zmm8,%zmm5
 336:	18 e0 ff ff 
 33a:	62 d2 3d 58 b8 b4 9b 	vfmadd231ps -0xfe8(%r11,%rbx,4){1to16},%zmm8,%zmm6
 341:	18 f0 ff ff 
 345:	62 d2 3d 58 b8 7c 9b 	vfmadd231ps 0x18(%r11,%rbx,4){1to16},%zmm8,%zmm7
 34c:	06 
 34d:	62 51 7c 48 10 44 24 	vmovups -0x1000(%r12),%zmm8
 354:	c0 
 355:	62 d2 3d 58 b8 84 9b 	vfmadd231ps -0x6fe4(%r11,%rbx,4){1to16},%zmm8,%zmm0
 35c:	1c 90 ff ff 
 360:	62 d2 3d 58 b8 8c 9b 	vfmadd231ps -0x5fe4(%r11,%rbx,4){1to16},%zmm8,%zmm1
 367:	1c a0 ff ff 
 36b:	62 d2 3d 58 b8 94 9b 	vfmadd231ps -0x4fe4(%r11,%rbx,4){1to16},%zmm8,%zmm2
 372:	1c b0 ff ff 
 376:	62 d2 3d 58 b8 9c 9b 	vfmadd231ps -0x3fe4(%r11,%rbx,4){1to16},%zmm8,%zmm3
 37d:	1c c0 ff ff 
 381:	62 d2 3d 58 b8 a4 9b 	vfmadd231ps -0x2fe4(%r11,%rbx,4){1to16},%zmm8,%zmm4
 388:	1c d0 ff ff 
 38c:	62 d2 3d 58 b8 ac 9b 	vfmadd231ps -0x1fe4(%r11,%rbx,4){1to16},%zmm8,%zmm5
 393:	1c e0 ff ff 
 397:	62 d2 3d 58 b8 b4 9b 	vfmadd231ps -0xfe4(%r11,%rbx,4){1to16},%zmm8,%zmm6
 39e:	1c f0 ff ff 
 3a2:	62 d2 3d 58 b8 7c 9b 	vfmadd231ps 0x1c(%r11,%rbx,4){1to16},%zmm8,%zmm7
 3a9:	07 
 3aa:	62 51 7c 48 10 04 24 	vmovups (%r12),%zmm8
 3b1:	62 d2 3d 58 b8 84 9b 	vfmadd231ps -0x6fe0(%r11,%rbx,4){1to16},%zmm8,%zmm0
 3b8:	20 90 ff ff 
 3bc:	62 d2 3d 58 b8 8c 9b 	vfmadd231ps -0x5fe0(%r11,%rbx,4){1to16},%zmm8,%zmm1
 3c3:	20 a0 ff ff 
 3c7:	62 d2 3d 58 b8 94 9b 	vfmadd231ps -0x4fe0(%r11,%rbx,4){1to16},%zmm8,%zmm2
 3ce:	20 b0 ff ff 
 3d2:	62 d2 3d 58 b8 9c 9b 	vfmadd231ps -0x3fe0(%r11,%rbx,4){1to16},%zmm8,%zmm3
 3d9:	20 c0 ff ff 
 3dd:	62 d2 3d 58 b8 a4 9b 	vfmadd231ps -0x2fe0(%r11,%rbx,4){1to16},%zmm8,%zmm4
 3e4:	20 d0 ff ff 
 3e8:	62 d2 3d 58 b8 ac 9b 	vfmadd231ps -0x1fe0(%r11,%rbx,4){1to16},%zmm8,%zmm5
 3ef:	20 e0 ff ff 
 3f3:	62 d2 3d 58 b8 b4 9b 	vfmadd231ps -0xfe0(%r11,%rbx,4){1to16},%zmm8,%zmm6
 3fa:	20 f0 ff ff 
 3fe:	62 d2 3d 58 b8 7c 9b 	vfmadd231ps 0x20(%r11,%rbx,4){1to16},%zmm8,%zmm7
 405:	08 
 406:	48 83 c3 08          	add    $0x8,%rbx
 40a:	49 81 c4 00 80 00 00 	add    $0x8000,%r12
 411:	48 83 fb 18          	cmp    $0x18,%rbx
 415:	0f 82 f5 fc ff ff    	jb     110 <main+0x110>
 41b:	48 8d 59 20          	lea    0x20(%rcx),%rbx
 41f:	49 81 c0 00 00 02 00 	add    $0x20000,%r8
 426:	49 83 eb 80          	sub    $0xffffffffffffff80,%r11
 42a:	48 81 f9 e0 03 00 00 	cmp    $0x3e0,%rcx
 431:	48 89 d9             	mov    %rbx,%rcx
 434:	0f 82 c6 fc ff ff    	jb     100 <main+0x100>
 43a:	62 f1 7c 48 11 04 ae 	vmovups %zmm0,(%rsi,%rbp,4)
 441:	62 f1 7c 48 11 4c ae 	vmovups %zmm1,0x1000(%rsi,%rbp,4)
 448:	40 
 449:	62 f1 7c 48 11 94 ae 	vmovups %zmm2,0x2000(%rsi,%rbp,4)
 450:	00 20 00 00 
 454:	62 f1 7c 48 11 9c ae 	vmovups %zmm3,0x3000(%rsi,%rbp,4)
 45b:	00 30 00 00 
 45f:	62 f1 7c 48 11 a4 ae 	vmovups %zmm4,0x4000(%rsi,%rbp,4)
 466:	00 40 00 00 
 46a:	62 f1 7c 48 11 ac ae 	vmovups %zmm5,0x5000(%rsi,%rbp,4)
 471:	00 50 00 00 
 475:	62 f1 7c 48 11 b4 ae 	vmovups %zmm6,0x6000(%rsi,%rbp,4)
 47c:	00 60 00 00 
 480:	62 f1 7c 48 11 bc ae 	vmovups %zmm7,0x7000(%rsi,%rbp,4)
 487:	00 70 00 00 
 48b:	49 83 c5 10          	add    $0x10,%r13
 48f:	48 83 c0 40          	add    $0x40,%rax
 493:	4d 39 d5             	cmp    %r10,%r13
 496:	0f 82 04 fc ff ff    	jb     a0 <main+0xa0>
 49c:	49 83 c6 08          	add    $0x8,%r14
 4a0:	48 81 c2 00 80 00 00 	add    $0x8000,%rdx
 4a7:	4c 3b 74 24 08       	cmp    0x8(%rsp),%r14
 4ac:	0f 82 de fb ff ff    	jb     90 <main+0x90>
 4b2:	48 81 c7 00 02 00 00 	add    $0x200,%rdi
 4b9:	49 81 f9 80 03 00 00 	cmp    $0x380,%r9
 4c0:	4d 89 d1             	mov    %r10,%r9
 4c3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
 4c8:	0f 82 b2 fb ff ff    	jb     80 <main+0x80>
 4ce:	48 81 04 24 00 00 08 	addq   $0x80000,(%rsp)
 4d5:	00 
 4d6:	49 81 fe 80 03 00 00 	cmp    $0x380,%r14
 4dd:	4c 8b 74 24 08       	mov    0x8(%rsp),%r14
 4e2:	0f 82 78 fb ff ff    	jb     60 <main+0x60>
 4e8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 4ef:	00 00 00 
 4f2:	c5 f8 77             	vzeroupper 
 4f5:	ff d0                	call   *%rax
 4f7:	c5 fb 5c 44 24 10    	vsubsd 0x10(%rsp),%xmm0,%xmm0
 4fd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 504:	00 00 00 
 507:	c5 fb 59 00          	vmulsd (%rax),%xmm0,%xmm0
 50b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 512:	00 00 00 
 515:	48 83 c4 28          	add    $0x28,%rsp
 519:	5b                   	pop    %rbx
 51a:	41 5c                	pop    %r12
 51c:	41 5d                	pop    %r13
 51e:	41 5e                	pop    %r14
 520:	41 5f                	pop    %r15
 522:	5d                   	pop    %rbp
 523:	ff e0                	jmp    *%rax
 525:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
 52c:	00 00 00 00 

0000000000000530 <_mlir_main>:
 530:	f3 0f 1e fa          	endbr64 
 534:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 53b:	00 00 00 
 53e:	ff e0                	jmp    *%rax
