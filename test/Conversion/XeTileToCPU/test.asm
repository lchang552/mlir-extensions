
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
   e:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  15:	31 c0                	xor    %eax,%eax
  17:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  1e:	00 00 00 
  21:	c5 fc 28 01          	vmovaps (%rcx),%ymm0
  25:	c5 fc 11 04 24       	vmovups %ymm0,(%rsp)
  2a:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  31:	00 00 00 
  34:	c5 fc 28 01          	vmovaps (%rcx),%ymm0
  38:	c5 fc 11 44 24 60    	vmovups %ymm0,0x60(%rsp)
  3e:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  45:	00 00 00 
  48:	c5 fc 28 01          	vmovaps (%rcx),%ymm0
  4c:	c5 fc 11 44 24 40    	vmovups %ymm0,0x40(%rsp)
  52:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  59:	00 00 00 
  5c:	c5 fc 28 01          	vmovaps (%rcx),%ymm0
  60:	c5 fc 11 44 24 20    	vmovups %ymm0,0x20(%rsp)
  66:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  6d:	00 00 00 
  70:	c4 e2 7d 18 21       	vbroadcastss (%rcx),%ymm4
  75:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  7c:	00 00 00 
  7f:	c4 e2 7d 18 29       	vbroadcastss (%rcx),%ymm5
  84:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  8b:	00 00 00 
  8e:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  95:	00 00 00 
  98:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
  9f:	00 00 00 
  a2:	c5 fd 6f 36          	vmovdqa (%rsi),%ymm6
  a6:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
  ad:	00 00 00 
  b0:	c5 fd 6f 3e          	vmovdqa (%rsi),%ymm7
  b4:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
  bb:	00 00 00 
  be:	c5 7d 6f 06          	vmovdqa (%rsi),%ymm8
  c2:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
  c9:	00 00 00 
  cc:	c5 7d 6f 0e          	vmovdqa (%rsi),%ymm9
  d0:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
  d7:	00 00 00 
  da:	c5 7d 6f 16          	vmovdqa (%rsi),%ymm10
  de:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
  e5:	00 00 00 
  e8:	c5 7d 6f 1e          	vmovdqa (%rsi),%ymm11
  ec:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
  f3:	00 00 00 
  f6:	c5 7d 6f 26          	vmovdqa (%rsi),%ymm12
  fa:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 101:	00 00 00 
 104:	c5 7d 6f 2e          	vmovdqa (%rsi),%ymm13
 108:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 10f:	00 00 00 
 112:	c5 7d 6f 36          	vmovdqa (%rsi),%ymm14
 116:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 11d:	00 00 00 
 120:	c5 7d 6f 3e          	vmovdqa (%rsi),%ymm15
 124:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 12b:	00 00 00 
 12e:	62 e1 fd 28 6f 06    	vmovdqa64 (%rsi),%ymm16
 134:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 13b:	00 00 00 
 13e:	62 e1 fd 28 6f 0e    	vmovdqa64 (%rsi),%ymm17
 144:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 14b:	00 00 00 
 14e:	62 e1 fd 28 6f 16    	vmovdqa64 (%rsi),%ymm18
 154:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 15b:	00 00 00 
 15e:	62 e1 fd 28 6f 1e    	vmovdqa64 (%rsi),%ymm19
 164:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 16b:	00 00 00 
 16e:	62 e1 fd 28 6f 26    	vmovdqa64 (%rsi),%ymm20
 174:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 17b:	00 00 00 
 17e:	62 e1 fd 28 6f 2e    	vmovdqa64 (%rsi),%ymm21
 184:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 18b:	00 00 00 
 18e:	62 e1 fd 28 6f 36    	vmovdqa64 (%rsi),%ymm22
 194:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 19b:	00 00 00 
 19e:	62 e1 fd 28 6f 3e    	vmovdqa64 (%rsi),%ymm23
 1a4:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 1ab:	00 00 00 
 1ae:	62 61 fd 28 6f 06    	vmovdqa64 (%rsi),%ymm24
 1b4:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 1bb:	00 00 00 
 1be:	62 61 fd 28 6f 0e    	vmovdqa64 (%rsi),%ymm25
 1c4:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 1cb:	00 00 00 
 1ce:	62 61 fd 28 6f 16    	vmovdqa64 (%rsi),%ymm26
 1d4:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 1db:	00 00 00 
 1de:	62 61 fd 28 6f 1e    	vmovdqa64 (%rsi),%ymm27
 1e4:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 1eb:	00 00 00 
 1ee:	62 61 fd 28 6f 26    	vmovdqa64 (%rsi),%ymm28
 1f4:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 1fb:	00 00 00 
 1fe:	62 61 fd 28 6f 2e    	vmovdqa64 (%rsi),%ymm29
 204:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 20b:	00 00 00 
 20e:	62 61 fd 28 6f 36    	vmovdqa64 (%rsi),%ymm30
 214:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 21b:	00 00 00 
 21e:	62 61 fd 28 6f 3e    	vmovdqa64 (%rsi),%ymm31
 224:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 22b:	00 00 00 
 22e:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
 235:	00 00 00 
 238:	c5 fd 6f 06          	vmovdqa (%rsi),%ymm0
 23c:	c5 fd 6f 0f          	vmovdqa (%rdi),%ymm1
 240:	62 f2 7d 28 7c d0    	vpbroadcastd %eax,%ymm2
 246:	c5 ed eb 1c 24       	vpor   (%rsp),%ymm2,%ymm3
 24b:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 251:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 255:	c5 fc 11 1c 81       	vmovups %ymm3,(%rcx,%rax,4)
 25a:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 25e:	c5 fc 11 1c 82       	vmovups %ymm3,(%rdx,%rax,4)
 263:	c5 ed eb 5c 24 60    	vpor   0x60(%rsp),%ymm2,%ymm3
 269:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 26f:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 273:	c5 fc 11 5c 81 20    	vmovups %ymm3,0x20(%rcx,%rax,4)
 279:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 27d:	c5 fc 11 5c 82 20    	vmovups %ymm3,0x20(%rdx,%rax,4)
 283:	c5 ed eb 5c 24 40    	vpor   0x40(%rsp),%ymm2,%ymm3
 289:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 28f:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 293:	c5 fc 11 5c 81 40    	vmovups %ymm3,0x40(%rcx,%rax,4)
 299:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 29d:	c5 fc 11 5c 82 40    	vmovups %ymm3,0x40(%rdx,%rax,4)
 2a3:	c5 ed eb 5c 24 20    	vpor   0x20(%rsp),%ymm2,%ymm3
 2a9:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 2af:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 2b3:	c5 fc 11 5c 81 60    	vmovups %ymm3,0x60(%rcx,%rax,4)
 2b9:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 2bd:	c5 fc 11 5c 82 60    	vmovups %ymm3,0x60(%rdx,%rax,4)
 2c3:	c5 ed eb de          	vpor   %ymm6,%ymm2,%ymm3
 2c7:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 2cd:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 2d1:	c5 fc 11 9c 81 80 00 	vmovups %ymm3,0x80(%rcx,%rax,4)
 2d8:	00 00 
 2da:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 2de:	c5 fc 11 9c 82 80 00 	vmovups %ymm3,0x80(%rdx,%rax,4)
 2e5:	00 00 
 2e7:	c5 ed eb df          	vpor   %ymm7,%ymm2,%ymm3
 2eb:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 2f1:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 2f5:	c5 fc 11 9c 81 a0 00 	vmovups %ymm3,0xa0(%rcx,%rax,4)
 2fc:	00 00 
 2fe:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 302:	c5 fc 11 9c 82 a0 00 	vmovups %ymm3,0xa0(%rdx,%rax,4)
 309:	00 00 
 30b:	c5 bd eb da          	vpor   %ymm2,%ymm8,%ymm3
 30f:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 315:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 319:	c5 fc 11 9c 81 c0 00 	vmovups %ymm3,0xc0(%rcx,%rax,4)
 320:	00 00 
 322:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 326:	c5 fc 11 9c 82 c0 00 	vmovups %ymm3,0xc0(%rdx,%rax,4)
 32d:	00 00 
 32f:	c5 b5 eb da          	vpor   %ymm2,%ymm9,%ymm3
 333:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 339:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 33d:	c5 fc 11 9c 81 e0 00 	vmovups %ymm3,0xe0(%rcx,%rax,4)
 344:	00 00 
 346:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 34a:	c5 fc 11 9c 82 e0 00 	vmovups %ymm3,0xe0(%rdx,%rax,4)
 351:	00 00 
 353:	c5 ad eb da          	vpor   %ymm2,%ymm10,%ymm3
 357:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 35d:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 361:	c5 fc 11 9c 81 00 01 	vmovups %ymm3,0x100(%rcx,%rax,4)
 368:	00 00 
 36a:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 36e:	c5 fc 11 9c 82 00 01 	vmovups %ymm3,0x100(%rdx,%rax,4)
 375:	00 00 
 377:	c5 a5 eb da          	vpor   %ymm2,%ymm11,%ymm3
 37b:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 381:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 385:	c5 fc 11 9c 81 20 01 	vmovups %ymm3,0x120(%rcx,%rax,4)
 38c:	00 00 
 38e:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 392:	c5 fc 11 9c 82 20 01 	vmovups %ymm3,0x120(%rdx,%rax,4)
 399:	00 00 
 39b:	c5 9d eb da          	vpor   %ymm2,%ymm12,%ymm3
 39f:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 3a5:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 3a9:	c5 fc 11 9c 81 40 01 	vmovups %ymm3,0x140(%rcx,%rax,4)
 3b0:	00 00 
 3b2:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 3b6:	c5 fc 11 9c 82 40 01 	vmovups %ymm3,0x140(%rdx,%rax,4)
 3bd:	00 00 
 3bf:	c5 95 eb da          	vpor   %ymm2,%ymm13,%ymm3
 3c3:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 3c9:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 3cd:	c5 fc 11 9c 81 60 01 	vmovups %ymm3,0x160(%rcx,%rax,4)
 3d4:	00 00 
 3d6:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 3da:	c5 fc 11 9c 82 60 01 	vmovups %ymm3,0x160(%rdx,%rax,4)
 3e1:	00 00 
 3e3:	c5 8d eb da          	vpor   %ymm2,%ymm14,%ymm3
 3e7:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 3ed:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 3f1:	c5 fc 11 9c 81 80 01 	vmovups %ymm3,0x180(%rcx,%rax,4)
 3f8:	00 00 
 3fa:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 3fe:	c5 fc 11 9c 82 80 01 	vmovups %ymm3,0x180(%rdx,%rax,4)
 405:	00 00 
 407:	c5 85 eb da          	vpor   %ymm2,%ymm15,%ymm3
 40b:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 411:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 415:	c5 fc 11 9c 81 a0 01 	vmovups %ymm3,0x1a0(%rcx,%rax,4)
 41c:	00 00 
 41e:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 422:	c5 fc 11 9c 82 a0 01 	vmovups %ymm3,0x1a0(%rdx,%rax,4)
 429:	00 00 
 42b:	62 b1 6d 28 eb d8    	vpord  %ymm16,%ymm2,%ymm3
 431:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 437:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 43b:	c5 fc 11 9c 81 c0 01 	vmovups %ymm3,0x1c0(%rcx,%rax,4)
 442:	00 00 
 444:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 448:	c5 fc 11 9c 82 c0 01 	vmovups %ymm3,0x1c0(%rdx,%rax,4)
 44f:	00 00 
 451:	62 b1 6d 28 eb d9    	vpord  %ymm17,%ymm2,%ymm3
 457:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 45d:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 461:	c5 fc 11 9c 81 e0 01 	vmovups %ymm3,0x1e0(%rcx,%rax,4)
 468:	00 00 
 46a:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 46e:	c5 fc 11 9c 82 e0 01 	vmovups %ymm3,0x1e0(%rdx,%rax,4)
 475:	00 00 
 477:	62 b1 6d 28 eb da    	vpord  %ymm18,%ymm2,%ymm3
 47d:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 483:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 487:	c5 fc 11 9c 81 00 02 	vmovups %ymm3,0x200(%rcx,%rax,4)
 48e:	00 00 
 490:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 494:	c5 fc 11 9c 82 00 02 	vmovups %ymm3,0x200(%rdx,%rax,4)
 49b:	00 00 
 49d:	62 b1 6d 28 eb db    	vpord  %ymm19,%ymm2,%ymm3
 4a3:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 4a9:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 4ad:	c5 fc 11 9c 81 20 02 	vmovups %ymm3,0x220(%rcx,%rax,4)
 4b4:	00 00 
 4b6:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 4ba:	c5 fc 11 9c 82 20 02 	vmovups %ymm3,0x220(%rdx,%rax,4)
 4c1:	00 00 
 4c3:	62 b1 6d 28 eb dc    	vpord  %ymm20,%ymm2,%ymm3
 4c9:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 4cf:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 4d3:	c5 fc 11 9c 81 40 02 	vmovups %ymm3,0x240(%rcx,%rax,4)
 4da:	00 00 
 4dc:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 4e0:	c5 fc 11 9c 82 40 02 	vmovups %ymm3,0x240(%rdx,%rax,4)
 4e7:	00 00 
 4e9:	62 b1 6d 28 eb dd    	vpord  %ymm21,%ymm2,%ymm3
 4ef:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 4f5:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 4f9:	c5 fc 11 9c 81 60 02 	vmovups %ymm3,0x260(%rcx,%rax,4)
 500:	00 00 
 502:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 506:	c5 fc 11 9c 82 60 02 	vmovups %ymm3,0x260(%rdx,%rax,4)
 50d:	00 00 
 50f:	62 b1 6d 28 eb de    	vpord  %ymm22,%ymm2,%ymm3
 515:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 51b:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 51f:	c5 fc 11 9c 81 80 02 	vmovups %ymm3,0x280(%rcx,%rax,4)
 526:	00 00 
 528:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 52c:	c5 fc 11 9c 82 80 02 	vmovups %ymm3,0x280(%rdx,%rax,4)
 533:	00 00 
 535:	62 b1 6d 28 eb df    	vpord  %ymm23,%ymm2,%ymm3
 53b:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 541:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 545:	c5 fc 11 9c 81 a0 02 	vmovups %ymm3,0x2a0(%rcx,%rax,4)
 54c:	00 00 
 54e:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 552:	c5 fc 11 9c 82 a0 02 	vmovups %ymm3,0x2a0(%rdx,%rax,4)
 559:	00 00 
 55b:	62 91 6d 28 eb d8    	vpord  %ymm24,%ymm2,%ymm3
 561:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 567:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 56b:	c5 fc 11 9c 81 c0 02 	vmovups %ymm3,0x2c0(%rcx,%rax,4)
 572:	00 00 
 574:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 578:	c5 fc 11 9c 82 c0 02 	vmovups %ymm3,0x2c0(%rdx,%rax,4)
 57f:	00 00 
 581:	62 91 6d 28 eb d9    	vpord  %ymm25,%ymm2,%ymm3
 587:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 58d:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 591:	c5 fc 11 9c 81 e0 02 	vmovups %ymm3,0x2e0(%rcx,%rax,4)
 598:	00 00 
 59a:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 59e:	c5 fc 11 9c 82 e0 02 	vmovups %ymm3,0x2e0(%rdx,%rax,4)
 5a5:	00 00 
 5a7:	62 91 6d 28 eb da    	vpord  %ymm26,%ymm2,%ymm3
 5ad:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 5b3:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 5b7:	c5 fc 11 9c 81 00 03 	vmovups %ymm3,0x300(%rcx,%rax,4)
 5be:	00 00 
 5c0:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 5c4:	c5 fc 11 9c 82 00 03 	vmovups %ymm3,0x300(%rdx,%rax,4)
 5cb:	00 00 
 5cd:	62 91 6d 28 eb db    	vpord  %ymm27,%ymm2,%ymm3
 5d3:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 5d9:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 5dd:	c5 fc 11 9c 81 20 03 	vmovups %ymm3,0x320(%rcx,%rax,4)
 5e4:	00 00 
 5e6:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 5ea:	c5 fc 11 9c 82 20 03 	vmovups %ymm3,0x320(%rdx,%rax,4)
 5f1:	00 00 
 5f3:	62 91 6d 28 eb dc    	vpord  %ymm28,%ymm2,%ymm3
 5f9:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 5ff:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 603:	c5 fc 11 9c 81 40 03 	vmovups %ymm3,0x340(%rcx,%rax,4)
 60a:	00 00 
 60c:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 610:	c5 fc 11 9c 82 40 03 	vmovups %ymm3,0x340(%rdx,%rax,4)
 617:	00 00 
 619:	62 91 6d 28 eb dd    	vpord  %ymm29,%ymm2,%ymm3
 61f:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 625:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 629:	c5 fc 11 9c 81 60 03 	vmovups %ymm3,0x360(%rcx,%rax,4)
 630:	00 00 
 632:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 636:	c5 fc 11 9c 82 60 03 	vmovups %ymm3,0x360(%rdx,%rax,4)
 63d:	00 00 
 63f:	62 91 6d 28 eb de    	vpord  %ymm30,%ymm2,%ymm3
 645:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 64b:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 64f:	c5 fc 11 9c 81 80 03 	vmovups %ymm3,0x380(%rcx,%rax,4)
 656:	00 00 
 658:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 65c:	c5 fc 11 9c 82 80 03 	vmovups %ymm3,0x380(%rdx,%rax,4)
 663:	00 00 
 665:	62 91 6d 28 eb df    	vpord  %ymm31,%ymm2,%ymm3
 66b:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 671:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 675:	c5 fc 11 9c 81 a0 03 	vmovups %ymm3,0x3a0(%rcx,%rax,4)
 67c:	00 00 
 67e:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 682:	c5 fc 11 9c 82 a0 03 	vmovups %ymm3,0x3a0(%rdx,%rax,4)
 689:	00 00 
 68b:	c5 ed eb d8          	vpor   %ymm0,%ymm2,%ymm3
 68f:	62 f1 7f 28 7a db    	vcvtudq2ps %ymm3,%ymm3
 695:	c5 e4 5e dc          	vdivps %ymm4,%ymm3,%ymm3
 699:	c5 fc 11 9c 81 c0 03 	vmovups %ymm3,0x3c0(%rcx,%rax,4)
 6a0:	00 00 
 6a2:	c5 e4 58 dd          	vaddps %ymm5,%ymm3,%ymm3
 6a6:	c5 fc 11 9c 82 c0 03 	vmovups %ymm3,0x3c0(%rdx,%rax,4)
 6ad:	00 00 
 6af:	c5 ed eb d1          	vpor   %ymm1,%ymm2,%ymm2
 6b3:	62 f1 7f 28 7a d2    	vcvtudq2ps %ymm2,%ymm2
 6b9:	c5 ec 5e d4          	vdivps %ymm4,%ymm2,%ymm2
 6bd:	c5 fc 11 94 81 e0 03 	vmovups %ymm2,0x3e0(%rcx,%rax,4)
 6c4:	00 00 
 6c6:	c5 ec 58 d5          	vaddps %ymm5,%ymm2,%ymm2
 6ca:	c5 fc 11 94 82 e0 03 	vmovups %ymm2,0x3e0(%rdx,%rax,4)
 6d1:	00 00 
 6d3:	48 05 00 01 00 00    	add    $0x100,%rax
 6d9:	48 3d 00 00 01 00    	cmp    $0x10000,%rax
 6df:	0f 85 5b fb ff ff    	jne    240 <main+0x240>
 6e5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 6ec:	00 00 00 
 6ef:	c5 f8 77             	vzeroupper 
 6f2:	ff d0                	call   *%rax
 6f4:	c5 f9 d6 04 24       	vmovq  %xmm0,(%rsp)
 6f9:	41 bc 10 27 00 00    	mov    $0x2710,%r12d
 6ff:	48 bb 00 00 00 00 00 	movabs $0x0,%rbx
 706:	00 00 00 
 709:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
 710:	00 00 00 
 713:	48 bd 00 00 00 00 00 	movabs $0x0,%rbp
 71a:	00 00 00 
 71d:	49 be 00 00 00 00 00 	movabs $0x0,%r14
 724:	00 00 00 
 727:	49 bf 00 00 00 00 00 	movabs $0x0,%r15
 72e:	00 00 00 
 731:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
 738:	0f 1f 84 00 00 00 00 
 73f:	00 
 740:	48 89 df             	mov    %rbx,%rdi
 743:	41 ff d5             	call   *%r13
 746:	48 89 df             	mov    %rbx,%rdi
 749:	89 c6                	mov    %eax,%esi
 74b:	ba 04 00 00 00       	mov    $0x4,%edx
 750:	ff d5                	call   *%rbp
 752:	48 89 df             	mov    %rbx,%rdi
 755:	31 f6                	xor    %esi,%esi
 757:	4c 89 f2             	mov    %r14,%rdx
 75a:	31 c0                	xor    %eax,%eax
 75c:	41 ff d7             	call   *%r15
 75f:	49 ff cc             	dec    %r12
 762:	75 dc                	jne    740 <main+0x740>
 764:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 76b:	00 00 00 
 76e:	ff d0                	call   *%rax
 770:	c5 fb 5c 04 24       	vsubsd (%rsp),%xmm0,%xmm0
 775:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 77c:	00 00 00 
 77f:	c5 fb 59 00          	vmulsd (%rax),%xmm0,%xmm0
 783:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 78a:	00 00 00 
 78d:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
 794:	5b                   	pop    %rbx
 795:	41 5c                	pop    %r12
 797:	41 5d                	pop    %r13
 799:	41 5e                	pop    %r14
 79b:	41 5f                	pop    %r15
 79d:	5d                   	pop    %rbp
 79e:	ff e0                	jmp    *%rax

00000000000007a0 <main..omp_par>:
 7a0:	f3 0f 1e fa          	endbr64 
 7a4:	55                   	push   %rbp
 7a5:	41 57                	push   %r15
 7a7:	41 56                	push   %r14
 7a9:	41 55                	push   %r13
 7ab:	41 54                	push   %r12
 7ad:	53                   	push   %rbx
 7ae:	48 83 ec 68          	sub    $0x68,%rsp
 7b2:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
 7b9:	00 00 
 7bb:	48 c7 44 24 20 03 00 	movq   $0x3,0x20(%rsp)
 7c2:	00 00 
 7c4:	48 c7 44 24 58 01 00 	movq   $0x1,0x58(%rsp)
 7cb:	00 00 
 7cd:	49 be 00 00 00 00 00 	movabs $0x0,%r14
 7d4:	00 00 00 
 7d7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 7de:	00 00 00 
 7e1:	4c 89 f7             	mov    %r14,%rdi
 7e4:	ff d0                	call   *%rax
 7e6:	89 c6                	mov    %eax,%esi
 7e8:	48 83 ec 08          	sub    $0x8,%rsp
 7ec:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
 7f1:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
 7f8:	00 00 00 
 7fb:	48 8d 4c 24 6c       	lea    0x6c(%rsp),%rcx
 800:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
 805:	4c 8d 4c 24 28       	lea    0x28(%rsp),%r9
 80a:	4c 89 f7             	mov    %r14,%rdi
 80d:	89 74 24 0c          	mov    %esi,0xc(%rsp)
 811:	ba 22 00 00 00       	mov    $0x22,%edx
 816:	6a 00                	push   $0x0
 818:	6a 01                	push   $0x1
 81a:	50                   	push   %rax
 81b:	41 ff d2             	call   *%r10
 81e:	48 83 c4 20          	add    $0x20,%rsp
 822:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
 827:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
 82c:	48 89 c8             	mov    %rcx,%rax
 82f:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 834:	48 29 ca             	sub    %rcx,%rdx
 837:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
 83c:	48 83 fa ff          	cmp    $0xffffffffffffffff,%rdx
 840:	0f 84 79 03 00 00    	je     bbf <main..omp_par+0x41f>
 846:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 84b:	48 89 c1             	mov    %rax,%rcx
 84e:	48 c1 e1 07          	shl    $0x7,%rcx
 852:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
 857:	48 c1 e0 06          	shl    $0x6,%rax
 85b:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
 860:	31 c9                	xor    %ecx,%ecx
 862:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 869:	00 00 00 
 86c:	eb 25                	jmp    893 <main..omp_par+0xf3>
 86e:	66 90                	xchg   %ax,%ax
 870:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
 875:	48 8d 41 01          	lea    0x1(%rcx),%rax
 879:	48 83 6c 24 18 80    	subq   $0xffffffffffffff80,0x18(%rsp)
 87f:	48 83 44 24 10 40    	addq   $0x40,0x10(%rsp)
 885:	48 3b 4c 24 30       	cmp    0x30(%rsp),%rcx
 88a:	48 89 c1             	mov    %rax,%rcx
 88d:	0f 84 2c 03 00 00    	je     bbf <main..omp_par+0x41f>
 893:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 898:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
 89d:	48 01 c8             	add    %rcx,%rax
 8a0:	49 89 c2             	mov    %rax,%r10
 8a3:	49 c1 e2 06          	shl    $0x6,%r10
 8a7:	49 83 e2 80          	and    $0xffffffffffffff80,%r10
 8ab:	48 b9 80 ff ff ff ff 	movabs $0x7fffffffffffff80,%rcx
 8b2:	ff ff 7f 
 8b5:	49 39 ca             	cmp    %rcx,%r10
 8b8:	74 b6                	je     870 <main..omp_par+0xd0>
 8ba:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 8bf:	89 ca                	mov    %ecx,%edx
 8c1:	c1 ea 07             	shr    $0x7,%edx
 8c4:	83 e2 01             	and    $0x1,%edx
 8c7:	48 c1 e2 09          	shl    $0x9,%rdx
 8cb:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 8d2:	00 00 00 
 8d5:	48 01 ca             	add    %rcx,%rdx
 8d8:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
 8dd:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
 8e2:	48 83 e1 80          	and    $0xffffffffffffff80,%rcx
 8e6:	48 c1 e1 0a          	shl    $0xa,%rcx
 8ea:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 8f1:	00 00 00 
 8f4:	4c 8d 84 0a 00 3c 00 	lea    0x3c00(%rdx,%rcx,1),%r8
 8fb:	00 
 8fc:	c1 e0 07             	shl    $0x7,%eax
 8ff:	0f b6 c8             	movzbl %al,%ecx
 902:	49 8d 82 80 00 00 00 	lea    0x80(%r10),%rax
 909:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
 90e:	48 8d 99 80 00 00 00 	lea    0x80(%rcx),%rbx
 915:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
 91c:	00 00 00 00 
 920:	4c 89 d7             	mov    %r10,%rdi
 923:	49 83 c2 40          	add    $0x40,%r10
 927:	4c 89 44 24 48       	mov    %r8,0x48(%rsp)
 92c:	0f 1f 40 00          	nopl   0x0(%rax)
 930:	49 89 fe             	mov    %rdi,%r14
 933:	49 c1 e6 08          	shl    $0x8,%r14
 937:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
 93c:	48 89 cd             	mov    %rcx,%rbp
 93f:	90                   	nop
 940:	4e 8d 4c 35 00       	lea    0x0(%rbp,%r14,1),%r9
 945:	62 91 7c 48 10 04 8b 	vmovups (%r11,%r9,4),%zmm0
 94c:	62 91 7c 48 10 4c 8b 	vmovups 0x400(%r11,%r9,4),%zmm1
 953:	10 
 954:	62 91 7c 48 10 54 8b 	vmovups 0x800(%r11,%r9,4),%zmm2
 95b:	20 
 95c:	62 91 7c 48 10 5c 8b 	vmovups 0xc00(%r11,%r9,4),%zmm3
 963:	30 
 964:	62 91 7c 48 10 64 8b 	vmovups 0x1000(%r11,%r9,4),%zmm4
 96b:	40 
 96c:	62 91 7c 48 10 6c 8b 	vmovups 0x1400(%r11,%r9,4),%zmm5
 973:	50 
 974:	62 91 7c 48 10 74 8b 	vmovups 0x1800(%r11,%r9,4),%zmm6
 97b:	60 
 97c:	62 91 7c 48 10 7c 8b 	vmovups 0x1c00(%r11,%r9,4),%zmm7
 983:	70 
 984:	62 11 7c 48 10 84 8b 	vmovups 0x2000(%r11,%r9,4),%zmm8
 98b:	00 20 00 00 
 98f:	62 11 7c 48 10 8c 8b 	vmovups 0x2400(%r11,%r9,4),%zmm9
 996:	00 24 00 00 
 99a:	62 11 7c 48 10 94 8b 	vmovups 0x2800(%r11,%r9,4),%zmm10
 9a1:	00 28 00 00 
 9a5:	62 11 7c 48 10 9c 8b 	vmovups 0x2c00(%r11,%r9,4),%zmm11
 9ac:	00 2c 00 00 
 9b0:	62 11 7c 48 10 a4 8b 	vmovups 0x3000(%r11,%r9,4),%zmm12
 9b7:	00 30 00 00 
 9bb:	62 11 7c 48 10 ac 8b 	vmovups 0x3400(%r11,%r9,4),%zmm13
 9c2:	00 34 00 00 
 9c6:	62 11 7c 48 10 b4 8b 	vmovups 0x3800(%r11,%r9,4),%zmm14
 9cd:	00 38 00 00 
 9d1:	62 11 7c 48 10 bc 8b 	vmovups 0x3c00(%r11,%r9,4),%zmm15
 9d8:	00 3c 00 00 
 9dc:	4d 89 c5             	mov    %r8,%r13
 9df:	48 89 f2             	mov    %rsi,%rdx
 9e2:	45 31 ff             	xor    %r15d,%r15d
 9e5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
 9ec:	00 00 00 00 
 9f0:	49 89 d4             	mov    %rdx,%r12
 9f3:	31 c0                	xor    %eax,%eax
 9f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
 9fc:	00 00 00 00 
 a00:	62 c1 7c 48 10 04 24 	vmovups (%r12),%zmm16
 a07:	62 d2 7d 50 b8 84 85 	vfmadd231ps -0x3c00(%r13,%rax,4){1to16},%zmm16,%zmm0
 a0e:	00 c4 ff ff 
 a12:	62 d2 7d 50 b8 8c 85 	vfmadd231ps -0x3800(%r13,%rax,4){1to16},%zmm16,%zmm1
 a19:	00 c8 ff ff 
 a1d:	62 d2 7d 50 b8 94 85 	vfmadd231ps -0x3400(%r13,%rax,4){1to16},%zmm16,%zmm2
 a24:	00 cc ff ff 
 a28:	62 d2 7d 50 b8 9c 85 	vfmadd231ps -0x3000(%r13,%rax,4){1to16},%zmm16,%zmm3
 a2f:	00 d0 ff ff 
 a33:	62 d2 7d 50 b8 a4 85 	vfmadd231ps -0x2c00(%r13,%rax,4){1to16},%zmm16,%zmm4
 a3a:	00 d4 ff ff 
 a3e:	62 d2 7d 50 b8 ac 85 	vfmadd231ps -0x2800(%r13,%rax,4){1to16},%zmm16,%zmm5
 a45:	00 d8 ff ff 
 a49:	62 d2 7d 50 b8 b4 85 	vfmadd231ps -0x2400(%r13,%rax,4){1to16},%zmm16,%zmm6
 a50:	00 dc ff ff 
 a54:	62 d2 7d 50 b8 bc 85 	vfmadd231ps -0x2000(%r13,%rax,4){1to16},%zmm16,%zmm7
 a5b:	00 e0 ff ff 
 a5f:	62 52 7d 50 b8 84 85 	vfmadd231ps -0x1c00(%r13,%rax,4){1to16},%zmm16,%zmm8
 a66:	00 e4 ff ff 
 a6a:	62 52 7d 50 b8 8c 85 	vfmadd231ps -0x1800(%r13,%rax,4){1to16},%zmm16,%zmm9
 a71:	00 e8 ff ff 
 a75:	62 52 7d 50 b8 94 85 	vfmadd231ps -0x1400(%r13,%rax,4){1to16},%zmm16,%zmm10
 a7c:	00 ec ff ff 
 a80:	62 52 7d 50 b8 9c 85 	vfmadd231ps -0x1000(%r13,%rax,4){1to16},%zmm16,%zmm11
 a87:	00 f0 ff ff 
 a8b:	62 52 7d 50 b8 a4 85 	vfmadd231ps -0xc00(%r13,%rax,4){1to16},%zmm16,%zmm12
 a92:	00 f4 ff ff 
 a96:	62 52 7d 50 b8 ac 85 	vfmadd231ps -0x800(%r13,%rax,4){1to16},%zmm16,%zmm13
 a9d:	00 f8 ff ff 
 aa1:	62 52 7d 50 b8 b4 85 	vfmadd231ps -0x400(%r13,%rax,4){1to16},%zmm16,%zmm14
 aa8:	00 fc ff ff 
 aac:	62 52 7d 50 b8 7c 85 	vfmadd231ps 0x0(%r13,%rax,4){1to16},%zmm16,%zmm15
 ab3:	00 
 ab4:	48 ff c0             	inc    %rax
 ab7:	49 81 c4 00 04 00 00 	add    $0x400,%r12
 abe:	48 83 f8 10          	cmp    $0x10,%rax
 ac2:	0f 85 38 ff ff ff    	jne    a00 <main..omp_par+0x260>
 ac8:	49 8d 47 10          	lea    0x10(%r15),%rax
 acc:	48 81 c2 00 40 00 00 	add    $0x4000,%rdx
 ad3:	49 83 c5 40          	add    $0x40,%r13
 ad7:	49 81 ff f0 00 00 00 	cmp    $0xf0,%r15
 ade:	49 89 c7             	mov    %rax,%r15
 ae1:	0f 82 09 ff ff ff    	jb     9f0 <main..omp_par+0x250>
 ae7:	62 91 7c 48 11 04 8b 	vmovups %zmm0,(%r11,%r9,4)
 aee:	62 91 7c 48 11 4c 8b 	vmovups %zmm1,0x400(%r11,%r9,4)
 af5:	10 
 af6:	62 91 7c 48 11 54 8b 	vmovups %zmm2,0x800(%r11,%r9,4)
 afd:	20 
 afe:	62 91 7c 48 11 5c 8b 	vmovups %zmm3,0xc00(%r11,%r9,4)
 b05:	30 
 b06:	62 91 7c 48 11 64 8b 	vmovups %zmm4,0x1000(%r11,%r9,4)
 b0d:	40 
 b0e:	62 91 7c 48 11 6c 8b 	vmovups %zmm5,0x1400(%r11,%r9,4)
 b15:	50 
 b16:	62 91 7c 48 11 74 8b 	vmovups %zmm6,0x1800(%r11,%r9,4)
 b1d:	60 
 b1e:	62 91 7c 48 11 7c 8b 	vmovups %zmm7,0x1c00(%r11,%r9,4)
 b25:	70 
 b26:	62 11 7c 48 11 84 8b 	vmovups %zmm8,0x2000(%r11,%r9,4)
 b2d:	00 20 00 00 
 b31:	62 11 7c 48 11 8c 8b 	vmovups %zmm9,0x2400(%r11,%r9,4)
 b38:	00 24 00 00 
 b3c:	62 11 7c 48 11 94 8b 	vmovups %zmm10,0x2800(%r11,%r9,4)
 b43:	00 28 00 00 
 b47:	62 11 7c 48 11 9c 8b 	vmovups %zmm11,0x2c00(%r11,%r9,4)
 b4e:	00 2c 00 00 
 b52:	62 11 7c 48 11 a4 8b 	vmovups %zmm12,0x3000(%r11,%r9,4)
 b59:	00 30 00 00 
 b5d:	62 11 7c 48 11 ac 8b 	vmovups %zmm13,0x3400(%r11,%r9,4)
 b64:	00 34 00 00 
 b68:	62 11 7c 48 11 b4 8b 	vmovups %zmm14,0x3800(%r11,%r9,4)
 b6f:	00 38 00 00 
 b73:	62 11 7c 48 11 bc 8b 	vmovups %zmm15,0x3c00(%r11,%r9,4)
 b7a:	00 3c 00 00 
 b7e:	48 83 c5 10          	add    $0x10,%rbp
 b82:	48 83 c6 40          	add    $0x40,%rsi
 b86:	48 39 dd             	cmp    %rbx,%rbp
 b89:	0f 82 b1 fd ff ff    	jb     940 <main..omp_par+0x1a0>
 b8f:	48 83 c7 10          	add    $0x10,%rdi
 b93:	49 81 c0 00 40 00 00 	add    $0x4000,%r8
 b9a:	4c 39 d7             	cmp    %r10,%rdi
 b9d:	0f 8c 8d fd ff ff    	jl     930 <main..omp_par+0x190>
 ba3:	4c 8b 44 24 48       	mov    0x48(%rsp),%r8
 ba8:	49 81 c0 00 00 01 00 	add    $0x10000,%r8
 baf:	4c 3b 54 24 40       	cmp    0x40(%rsp),%r10
 bb4:	0f 8c 66 fd ff ff    	jl     920 <main..omp_par+0x180>
 bba:	e9 b1 fc ff ff       	jmp    870 <main..omp_par+0xd0>
 bbf:	49 be 00 00 00 00 00 	movabs $0x0,%r14
 bc6:	00 00 00 
 bc9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 bd0:	00 00 00 
 bd3:	4c 89 f7             	mov    %r14,%rdi
 bd6:	8b 74 24 04          	mov    0x4(%rsp),%esi
 bda:	c5 f8 77             	vzeroupper 
 bdd:	ff d0                	call   *%rax
 bdf:	4c 89 f7             	mov    %r14,%rdi
 be2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 be9:	00 00 00 
 bec:	ff d0                	call   *%rax
 bee:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
 bf5:	00 00 00 
 bf8:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 bff:	00 00 00 
 c02:	89 c6                	mov    %eax,%esi
 c04:	ff d1                	call   *%rcx
 c06:	48 83 c4 68          	add    $0x68,%rsp
 c0a:	5b                   	pop    %rbx
 c0b:	41 5c                	pop    %r12
 c0d:	41 5d                	pop    %r13
 c0f:	41 5e                	pop    %r14
 c11:	41 5f                	pop    %r15
 c13:	5d                   	pop    %rbp
 c14:	c3                   	ret    
 c15:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
 c1c:	00 00 00 00 

0000000000000c20 <_mlir_main>:
 c20:	f3 0f 1e fa          	endbr64 
 c24:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 c2b:	00 00 00 
 c2e:	ff e0                	jmp    *%rax

0000000000000c30 <_mlir_main..omp_par>:
 c30:	f3 0f 1e fa          	endbr64 
 c34:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 c3b:	00 00 00 
 c3e:	ff e0                	jmp    *%rax
