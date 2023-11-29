
test.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 56                	push   %r14
   6:	53                   	push   %rbx
   7:	50                   	push   %rax
   8:	49 be 00 00 00 00 00 	movabs $0x0,%r14
   f:	00 00 00 
  12:	41 ff d6             	call   *%r14
  15:	c5 fb 11 04 24       	vmovsd %xmm0,(%rsp)
  1a:	48 bb 00 00 00 00 00 	movabs $0x0,%rbx
  21:	00 00 00 
  24:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  2b:	00 00 00 
  2e:	48 89 df             	mov    %rbx,%rdi
  31:	ff d0                	call   *%rax
  33:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  3a:	00 00 00 
  3d:	48 89 df             	mov    %rbx,%rdi
  40:	89 c6                	mov    %eax,%esi
  42:	ba 20 00 00 00       	mov    $0x20,%edx
  47:	ff d1                	call   *%rcx
  49:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  50:	00 00 00 
  53:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  5a:	00 00 00 
  5d:	48 89 df             	mov    %rbx,%rdi
  60:	31 f6                	xor    %esi,%esi
  62:	31 c0                	xor    %eax,%eax
  64:	ff d1                	call   *%rcx
  66:	41 ff d6             	call   *%r14
  69:	c5 fb 5c 04 24       	vsubsd (%rsp),%xmm0,%xmm0
  6e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  75:	00 00 00 
  78:	c5 fb 59 00          	vmulsd (%rax),%xmm0,%xmm0
  7c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  83:	00 00 00 
  86:	48 83 c4 08          	add    $0x8,%rsp
  8a:	5b                   	pop    %rbx
  8b:	41 5e                	pop    %r14
  8d:	ff e0                	jmp    *%rax
  8f:	90                   	nop

0000000000000090 <main..omp_par>:
  90:	f3 0f 1e fa          	endbr64 
  94:	55                   	push   %rbp
  95:	41 57                	push   %r15
  97:	41 56                	push   %r14
  99:	41 55                	push   %r13
  9b:	41 54                	push   %r12
  9d:	53                   	push   %rbx
  9e:	48 83 ec 58          	sub    $0x58,%rsp
  a2:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  a9:	00 00 
  ab:	48 c7 44 24 20 3f 00 	movq   $0x3f,0x20(%rsp)
  b2:	00 00 
  b4:	48 c7 44 24 48 01 00 	movq   $0x1,0x48(%rsp)
  bb:	00 00 
  bd:	49 be 00 00 00 00 00 	movabs $0x0,%r14
  c4:	00 00 00 
  c7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  ce:	00 00 00 
  d1:	4c 89 f7             	mov    %r14,%rdi
  d4:	ff d0                	call   *%rax
  d6:	89 c6                	mov    %eax,%esi
  d8:	48 83 ec 08          	sub    $0x8,%rsp
  dc:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
  e1:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
  e8:	00 00 00 
  eb:	48 8d 4c 24 5c       	lea    0x5c(%rsp),%rcx
  f0:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
  f5:	4c 8d 4c 24 28       	lea    0x28(%rsp),%r9
  fa:	4c 89 f7             	mov    %r14,%rdi
  fd:	89 74 24 0c          	mov    %esi,0xc(%rsp)
 101:	ba 22 00 00 00       	mov    $0x22,%edx
 106:	6a 00                	push   $0x0
 108:	6a 01                	push   $0x1
 10a:	50                   	push   %rax
 10b:	41 ff d2             	call   *%r10
 10e:	48 83 c4 20          	add    $0x20,%rsp
 112:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
 117:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
 11c:	48 89 c8             	mov    %rcx,%rax
 11f:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 124:	48 29 ca             	sub    %rcx,%rdx
 127:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
 12c:	48 83 fa ff          	cmp    $0xffffffffffffffff,%rdx
 130:	0f 84 e8 04 00 00    	je     61e <main..omp_par+0x58e>
 136:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 13b:	48 89 c1             	mov    %rax,%rcx
 13e:	48 c1 e1 04          	shl    $0x4,%rcx
 142:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
 147:	48 c1 e0 07          	shl    $0x7,%rax
 14b:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
 150:	31 c9                	xor    %ecx,%ecx
 152:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
 159:	00 00 00 
 15c:	eb 25                	jmp    183 <main..omp_par+0xf3>
 15e:	66 90                	xchg   %ax,%ax
 160:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
 165:	48 8d 41 01          	lea    0x1(%rcx),%rax
 169:	48 83 44 24 18 10    	addq   $0x10,0x18(%rsp)
 16f:	48 83 6c 24 10 80    	subq   $0xffffffffffffff80,0x10(%rsp)
 175:	48 3b 4c 24 30       	cmp    0x30(%rsp),%rcx
 17a:	48 89 c1             	mov    %rax,%rcx
 17d:	0f 84 9b 04 00 00    	je     61e <main..omp_par+0x58e>
 183:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 188:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
 18d:	4c 8d 04 01          	lea    (%rcx,%rax,1),%r8
 191:	4d 89 c3             	mov    %r8,%r11
 194:	49 c1 e3 04          	shl    $0x4,%r11
 198:	49 83 e3 80          	and    $0xffffffffffffff80,%r11
 19c:	48 b8 80 ff ff ff ff 	movabs $0x7fffffffffffff80,%rax
 1a3:	ff ff 7f 
 1a6:	49 39 c3             	cmp    %rax,%r11
 1a9:	74 b5                	je     160 <main..omp_par+0xd0>
 1ab:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 1b0:	48 83 e0 80          	and    $0xffffffffffffff80,%rax
 1b4:	48 c1 e0 0c          	shl    $0xc,%rax
 1b8:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 1bf:	00 00 00 
 1c2:	4c 8d 8c 01 1c 70 00 	lea    0x701c(%rcx,%rax,1),%r9
 1c9:	00 
 1ca:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
 1cf:	c1 e8 07             	shr    $0x7,%eax
 1d2:	83 e0 07             	and    $0x7,%eax
 1d5:	48 c1 e0 09          	shl    $0x9,%rax
 1d9:	48 8d 84 01 00 70 00 	lea    0x7000(%rcx,%rax,1),%rax
 1e0:	00 
 1e1:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
 1e6:	41 83 e0 07          	and    $0x7,%r8d
 1ea:	41 c1 e0 07          	shl    $0x7,%r8d
 1ee:	49 8d ab 80 00 00 00 	lea    0x80(%r11),%rbp
 1f5:	4d 8d b8 80 00 00 00 	lea    0x80(%r8),%r15
 1fc:	0f 1f 40 00          	nopl   0x0(%rax)
 200:	4d 89 de             	mov    %r11,%r14
 203:	49 c1 e6 0a          	shl    $0xa,%r14
 207:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
 20c:	4c 89 c3             	mov    %r8,%rbx
 20f:	90                   	nop
 210:	4a 8d 04 33          	lea    (%rbx,%r14,1),%rax
 214:	62 d1 7c 48 10 04 82 	vmovups (%r10,%rax,4),%zmm0
 21b:	62 d1 7c 48 10 4c 82 	vmovups 0x1000(%r10,%rax,4),%zmm1
 222:	40 
 223:	62 d1 7c 48 10 94 82 	vmovups 0x2000(%r10,%rax,4),%zmm2
 22a:	00 20 00 00 
 22e:	62 d1 7c 48 10 9c 82 	vmovups 0x3000(%r10,%rax,4),%zmm3
 235:	00 30 00 00 
 239:	62 d1 7c 48 10 a4 82 	vmovups 0x4000(%r10,%rax,4),%zmm4
 240:	00 40 00 00 
 244:	62 d1 7c 48 10 ac 82 	vmovups 0x5000(%r10,%rax,4),%zmm5
 24b:	00 50 00 00 
 24f:	62 d1 7c 48 10 b4 82 	vmovups 0x6000(%r10,%rax,4),%zmm6
 256:	00 60 00 00 
 25a:	62 d1 7c 48 10 bc 82 	vmovups 0x7000(%r10,%rax,4),%zmm7
 261:	00 70 00 00 
 265:	48 89 cf             	mov    %rcx,%rdi
 268:	4d 89 cc             	mov    %r9,%r12
 26b:	31 d2                	xor    %edx,%edx
 26d:	0f 1f 00             	nopl   (%rax)
 270:	48 c7 c6 f8 ff ff ff 	mov    $0xfffffffffffffff8,%rsi
 277:	49 89 fd             	mov    %rdi,%r13
 27a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 280:	62 51 7c 48 10 85 00 	vmovups -0x7000(%r13),%zmm8
 287:	90 ff ff 
 28a:	62 d2 3d 58 b8 84 b4 	vfmadd231ps -0x6ffc(%r12,%rsi,4){1to16},%zmm8,%zmm0
 291:	04 90 ff ff 
 295:	62 d2 3d 58 b8 8c b4 	vfmadd231ps -0x5ffc(%r12,%rsi,4){1to16},%zmm8,%zmm1
 29c:	04 a0 ff ff 
 2a0:	62 d2 3d 58 b8 94 b4 	vfmadd231ps -0x4ffc(%r12,%rsi,4){1to16},%zmm8,%zmm2
 2a7:	04 b0 ff ff 
 2ab:	62 d2 3d 58 b8 9c b4 	vfmadd231ps -0x3ffc(%r12,%rsi,4){1to16},%zmm8,%zmm3
 2b2:	04 c0 ff ff 
 2b6:	62 d2 3d 58 b8 a4 b4 	vfmadd231ps -0x2ffc(%r12,%rsi,4){1to16},%zmm8,%zmm4
 2bd:	04 d0 ff ff 
 2c1:	62 d2 3d 58 b8 ac b4 	vfmadd231ps -0x1ffc(%r12,%rsi,4){1to16},%zmm8,%zmm5
 2c8:	04 e0 ff ff 
 2cc:	62 d2 3d 58 b8 b4 b4 	vfmadd231ps -0xffc(%r12,%rsi,4){1to16},%zmm8,%zmm6
 2d3:	04 f0 ff ff 
 2d7:	62 d2 3d 58 b8 7c b4 	vfmadd231ps 0x4(%r12,%rsi,4){1to16},%zmm8,%zmm7
 2de:	01 
 2df:	62 51 7c 48 10 85 00 	vmovups -0x6000(%r13),%zmm8
 2e6:	a0 ff ff 
 2e9:	62 d2 3d 58 b8 84 b4 	vfmadd231ps -0x6ff8(%r12,%rsi,4){1to16},%zmm8,%zmm0
 2f0:	08 90 ff ff 
 2f4:	62 d2 3d 58 b8 8c b4 	vfmadd231ps -0x5ff8(%r12,%rsi,4){1to16},%zmm8,%zmm1
 2fb:	08 a0 ff ff 
 2ff:	62 d2 3d 58 b8 94 b4 	vfmadd231ps -0x4ff8(%r12,%rsi,4){1to16},%zmm8,%zmm2
 306:	08 b0 ff ff 
 30a:	62 d2 3d 58 b8 9c b4 	vfmadd231ps -0x3ff8(%r12,%rsi,4){1to16},%zmm8,%zmm3
 311:	08 c0 ff ff 
 315:	62 d2 3d 58 b8 a4 b4 	vfmadd231ps -0x2ff8(%r12,%rsi,4){1to16},%zmm8,%zmm4
 31c:	08 d0 ff ff 
 320:	62 d2 3d 58 b8 ac b4 	vfmadd231ps -0x1ff8(%r12,%rsi,4){1to16},%zmm8,%zmm5
 327:	08 e0 ff ff 
 32b:	62 d2 3d 58 b8 b4 b4 	vfmadd231ps -0xff8(%r12,%rsi,4){1to16},%zmm8,%zmm6
 332:	08 f0 ff ff 
 336:	62 d2 3d 58 b8 7c b4 	vfmadd231ps 0x8(%r12,%rsi,4){1to16},%zmm8,%zmm7
 33d:	02 
 33e:	62 51 7c 48 10 85 00 	vmovups -0x5000(%r13),%zmm8
 345:	b0 ff ff 
 348:	62 d2 3d 58 b8 84 b4 	vfmadd231ps -0x6ff4(%r12,%rsi,4){1to16},%zmm8,%zmm0
 34f:	0c 90 ff ff 
 353:	62 d2 3d 58 b8 8c b4 	vfmadd231ps -0x5ff4(%r12,%rsi,4){1to16},%zmm8,%zmm1
 35a:	0c a0 ff ff 
 35e:	62 d2 3d 58 b8 94 b4 	vfmadd231ps -0x4ff4(%r12,%rsi,4){1to16},%zmm8,%zmm2
 365:	0c b0 ff ff 
 369:	62 d2 3d 58 b8 9c b4 	vfmadd231ps -0x3ff4(%r12,%rsi,4){1to16},%zmm8,%zmm3
 370:	0c c0 ff ff 
 374:	62 d2 3d 58 b8 a4 b4 	vfmadd231ps -0x2ff4(%r12,%rsi,4){1to16},%zmm8,%zmm4
 37b:	0c d0 ff ff 
 37f:	62 d2 3d 58 b8 ac b4 	vfmadd231ps -0x1ff4(%r12,%rsi,4){1to16},%zmm8,%zmm5
 386:	0c e0 ff ff 
 38a:	62 d2 3d 58 b8 b4 b4 	vfmadd231ps -0xff4(%r12,%rsi,4){1to16},%zmm8,%zmm6
 391:	0c f0 ff ff 
 395:	62 d2 3d 58 b8 7c b4 	vfmadd231ps 0xc(%r12,%rsi,4){1to16},%zmm8,%zmm7
 39c:	03 
 39d:	62 51 7c 48 10 85 00 	vmovups -0x4000(%r13),%zmm8
 3a4:	c0 ff ff 
 3a7:	62 d2 3d 58 b8 84 b4 	vfmadd231ps -0x6ff0(%r12,%rsi,4){1to16},%zmm8,%zmm0
 3ae:	10 90 ff ff 
 3b2:	62 d2 3d 58 b8 8c b4 	vfmadd231ps -0x5ff0(%r12,%rsi,4){1to16},%zmm8,%zmm1
 3b9:	10 a0 ff ff 
 3bd:	62 d2 3d 58 b8 94 b4 	vfmadd231ps -0x4ff0(%r12,%rsi,4){1to16},%zmm8,%zmm2
 3c4:	10 b0 ff ff 
 3c8:	62 d2 3d 58 b8 9c b4 	vfmadd231ps -0x3ff0(%r12,%rsi,4){1to16},%zmm8,%zmm3
 3cf:	10 c0 ff ff 
 3d3:	62 d2 3d 58 b8 a4 b4 	vfmadd231ps -0x2ff0(%r12,%rsi,4){1to16},%zmm8,%zmm4
 3da:	10 d0 ff ff 
 3de:	62 d2 3d 58 b8 ac b4 	vfmadd231ps -0x1ff0(%r12,%rsi,4){1to16},%zmm8,%zmm5
 3e5:	10 e0 ff ff 
 3e9:	62 d2 3d 58 b8 b4 b4 	vfmadd231ps -0xff0(%r12,%rsi,4){1to16},%zmm8,%zmm6
 3f0:	10 f0 ff ff 
 3f4:	62 d2 3d 58 b8 7c b4 	vfmadd231ps 0x10(%r12,%rsi,4){1to16},%zmm8,%zmm7
 3fb:	04 
 3fc:	62 51 7c 48 10 85 00 	vmovups -0x3000(%r13),%zmm8
 403:	d0 ff ff 
 406:	62 d2 3d 58 b8 84 b4 	vfmadd231ps -0x6fec(%r12,%rsi,4){1to16},%zmm8,%zmm0
 40d:	14 90 ff ff 
 411:	62 d2 3d 58 b8 8c b4 	vfmadd231ps -0x5fec(%r12,%rsi,4){1to16},%zmm8,%zmm1
 418:	14 a0 ff ff 
 41c:	62 d2 3d 58 b8 94 b4 	vfmadd231ps -0x4fec(%r12,%rsi,4){1to16},%zmm8,%zmm2
 423:	14 b0 ff ff 
 427:	62 d2 3d 58 b8 9c b4 	vfmadd231ps -0x3fec(%r12,%rsi,4){1to16},%zmm8,%zmm3
 42e:	14 c0 ff ff 
 432:	62 d2 3d 58 b8 a4 b4 	vfmadd231ps -0x2fec(%r12,%rsi,4){1to16},%zmm8,%zmm4
 439:	14 d0 ff ff 
 43d:	62 d2 3d 58 b8 ac b4 	vfmadd231ps -0x1fec(%r12,%rsi,4){1to16},%zmm8,%zmm5
 444:	14 e0 ff ff 
 448:	62 d2 3d 58 b8 b4 b4 	vfmadd231ps -0xfec(%r12,%rsi,4){1to16},%zmm8,%zmm6
 44f:	14 f0 ff ff 
 453:	62 d2 3d 58 b8 7c b4 	vfmadd231ps 0x14(%r12,%rsi,4){1to16},%zmm8,%zmm7
 45a:	05 
 45b:	62 51 7c 48 10 45 80 	vmovups -0x2000(%r13),%zmm8
 462:	62 d2 3d 58 b8 84 b4 	vfmadd231ps -0x6fe8(%r12,%rsi,4){1to16},%zmm8,%zmm0
 469:	18 90 ff ff 
 46d:	62 d2 3d 58 b8 8c b4 	vfmadd231ps -0x5fe8(%r12,%rsi,4){1to16},%zmm8,%zmm1
 474:	18 a0 ff ff 
 478:	62 d2 3d 58 b8 94 b4 	vfmadd231ps -0x4fe8(%r12,%rsi,4){1to16},%zmm8,%zmm2
 47f:	18 b0 ff ff 
 483:	62 d2 3d 58 b8 9c b4 	vfmadd231ps -0x3fe8(%r12,%rsi,4){1to16},%zmm8,%zmm3
 48a:	18 c0 ff ff 
 48e:	62 d2 3d 58 b8 a4 b4 	vfmadd231ps -0x2fe8(%r12,%rsi,4){1to16},%zmm8,%zmm4
 495:	18 d0 ff ff 
 499:	62 d2 3d 58 b8 ac b4 	vfmadd231ps -0x1fe8(%r12,%rsi,4){1to16},%zmm8,%zmm5
 4a0:	18 e0 ff ff 
 4a4:	62 d2 3d 58 b8 b4 b4 	vfmadd231ps -0xfe8(%r12,%rsi,4){1to16},%zmm8,%zmm6
 4ab:	18 f0 ff ff 
 4af:	62 d2 3d 58 b8 7c b4 	vfmadd231ps 0x18(%r12,%rsi,4){1to16},%zmm8,%zmm7
 4b6:	06 
 4b7:	62 51 7c 48 10 45 c0 	vmovups -0x1000(%r13),%zmm8
 4be:	62 d2 3d 58 b8 84 b4 	vfmadd231ps -0x6fe4(%r12,%rsi,4){1to16},%zmm8,%zmm0
 4c5:	1c 90 ff ff 
 4c9:	62 d2 3d 58 b8 8c b4 	vfmadd231ps -0x5fe4(%r12,%rsi,4){1to16},%zmm8,%zmm1
 4d0:	1c a0 ff ff 
 4d4:	62 d2 3d 58 b8 94 b4 	vfmadd231ps -0x4fe4(%r12,%rsi,4){1to16},%zmm8,%zmm2
 4db:	1c b0 ff ff 
 4df:	62 d2 3d 58 b8 9c b4 	vfmadd231ps -0x3fe4(%r12,%rsi,4){1to16},%zmm8,%zmm3
 4e6:	1c c0 ff ff 
 4ea:	62 d2 3d 58 b8 a4 b4 	vfmadd231ps -0x2fe4(%r12,%rsi,4){1to16},%zmm8,%zmm4
 4f1:	1c d0 ff ff 
 4f5:	62 d2 3d 58 b8 ac b4 	vfmadd231ps -0x1fe4(%r12,%rsi,4){1to16},%zmm8,%zmm5
 4fc:	1c e0 ff ff 
 500:	62 d2 3d 58 b8 b4 b4 	vfmadd231ps -0xfe4(%r12,%rsi,4){1to16},%zmm8,%zmm6
 507:	1c f0 ff ff 
 50b:	62 d2 3d 58 b8 7c b4 	vfmadd231ps 0x1c(%r12,%rsi,4){1to16},%zmm8,%zmm7
 512:	07 
 513:	62 51 7c 48 10 45 00 	vmovups 0x0(%r13),%zmm8
 51a:	62 d2 3d 58 b8 84 b4 	vfmadd231ps -0x6fe0(%r12,%rsi,4){1to16},%zmm8,%zmm0
 521:	20 90 ff ff 
 525:	62 d2 3d 58 b8 8c b4 	vfmadd231ps -0x5fe0(%r12,%rsi,4){1to16},%zmm8,%zmm1
 52c:	20 a0 ff ff 
 530:	62 d2 3d 58 b8 94 b4 	vfmadd231ps -0x4fe0(%r12,%rsi,4){1to16},%zmm8,%zmm2
 537:	20 b0 ff ff 
 53b:	62 d2 3d 58 b8 9c b4 	vfmadd231ps -0x3fe0(%r12,%rsi,4){1to16},%zmm8,%zmm3
 542:	20 c0 ff ff 
 546:	62 d2 3d 58 b8 a4 b4 	vfmadd231ps -0x2fe0(%r12,%rsi,4){1to16},%zmm8,%zmm4
 54d:	20 d0 ff ff 
 551:	62 d2 3d 58 b8 ac b4 	vfmadd231ps -0x1fe0(%r12,%rsi,4){1to16},%zmm8,%zmm5
 558:	20 e0 ff ff 
 55c:	62 d2 3d 58 b8 b4 b4 	vfmadd231ps -0xfe0(%r12,%rsi,4){1to16},%zmm8,%zmm6
 563:	20 f0 ff ff 
 567:	62 d2 3d 58 b8 7c b4 	vfmadd231ps 0x20(%r12,%rsi,4){1to16},%zmm8,%zmm7
 56e:	08 
 56f:	48 83 c6 08          	add    $0x8,%rsi
 573:	49 81 c5 00 80 00 00 	add    $0x8000,%r13
 57a:	48 83 fe 18          	cmp    $0x18,%rsi
 57e:	0f 82 fc fc ff ff    	jb     280 <main..omp_par+0x1f0>
 584:	48 8d 72 20          	lea    0x20(%rdx),%rsi
 588:	49 83 ec 80          	sub    $0xffffffffffffff80,%r12
 58c:	48 81 c7 00 00 02 00 	add    $0x20000,%rdi
 593:	48 81 fa e0 03 00 00 	cmp    $0x3e0,%rdx
 59a:	48 89 f2             	mov    %rsi,%rdx
 59d:	0f 82 cd fc ff ff    	jb     270 <main..omp_par+0x1e0>
 5a3:	62 d1 7c 48 11 04 82 	vmovups %zmm0,(%r10,%rax,4)
 5aa:	62 d1 7c 48 11 4c 82 	vmovups %zmm1,0x1000(%r10,%rax,4)
 5b1:	40 
 5b2:	62 d1 7c 48 11 94 82 	vmovups %zmm2,0x2000(%r10,%rax,4)
 5b9:	00 20 00 00 
 5bd:	62 d1 7c 48 11 9c 82 	vmovups %zmm3,0x3000(%r10,%rax,4)
 5c4:	00 30 00 00 
 5c8:	62 d1 7c 48 11 a4 82 	vmovups %zmm4,0x4000(%r10,%rax,4)
 5cf:	00 40 00 00 
 5d3:	62 d1 7c 48 11 ac 82 	vmovups %zmm5,0x5000(%r10,%rax,4)
 5da:	00 50 00 00 
 5de:	62 d1 7c 48 11 b4 82 	vmovups %zmm6,0x6000(%r10,%rax,4)
 5e5:	00 60 00 00 
 5e9:	62 d1 7c 48 11 bc 82 	vmovups %zmm7,0x7000(%r10,%rax,4)
 5f0:	00 70 00 00 
 5f4:	48 83 c3 10          	add    $0x10,%rbx
 5f8:	48 83 c1 40          	add    $0x40,%rcx
 5fc:	4c 39 fb             	cmp    %r15,%rbx
 5ff:	0f 82 0b fc ff ff    	jb     210 <main..omp_par+0x180>
 605:	49 83 c3 08          	add    $0x8,%r11
 609:	49 81 c1 00 80 00 00 	add    $0x8000,%r9
 610:	49 39 eb             	cmp    %rbp,%r11
 613:	0f 8c e7 fb ff ff    	jl     200 <main..omp_par+0x170>
 619:	e9 42 fb ff ff       	jmp    160 <main..omp_par+0xd0>
 61e:	49 be 00 00 00 00 00 	movabs $0x0,%r14
 625:	00 00 00 
 628:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 62f:	00 00 00 
 632:	4c 89 f7             	mov    %r14,%rdi
 635:	8b 74 24 04          	mov    0x4(%rsp),%esi
 639:	c5 f8 77             	vzeroupper 
 63c:	ff d0                	call   *%rax
 63e:	4c 89 f7             	mov    %r14,%rdi
 641:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 648:	00 00 00 
 64b:	ff d0                	call   *%rax
 64d:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
 654:	00 00 00 
 657:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 65e:	00 00 00 
 661:	89 c6                	mov    %eax,%esi
 663:	ff d1                	call   *%rcx
 665:	48 83 c4 58          	add    $0x58,%rsp
 669:	5b                   	pop    %rbx
 66a:	41 5c                	pop    %r12
 66c:	41 5d                	pop    %r13
 66e:	41 5e                	pop    %r14
 670:	41 5f                	pop    %r15
 672:	5d                   	pop    %rbp
 673:	c3                   	ret    
 674:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
 67b:	00 00 00 00 00 

0000000000000680 <_mlir_main>:
 680:	f3 0f 1e fa          	endbr64 
 684:	41 56                	push   %r14
 686:	53                   	push   %rbx
 687:	50                   	push   %rax
 688:	49 be 00 00 00 00 00 	movabs $0x0,%r14
 68f:	00 00 00 
 692:	41 ff d6             	call   *%r14
 695:	c5 fb 11 04 24       	vmovsd %xmm0,(%rsp)
 69a:	48 bb 00 00 00 00 00 	movabs $0x0,%rbx
 6a1:	00 00 00 
 6a4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 6ab:	00 00 00 
 6ae:	48 89 df             	mov    %rbx,%rdi
 6b1:	ff d0                	call   *%rax
 6b3:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 6ba:	00 00 00 
 6bd:	48 89 df             	mov    %rbx,%rdi
 6c0:	89 c6                	mov    %eax,%esi
 6c2:	ba 20 00 00 00       	mov    $0x20,%edx
 6c7:	ff d1                	call   *%rcx
 6c9:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 6d0:	00 00 00 
 6d3:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 6da:	00 00 00 
 6dd:	48 89 df             	mov    %rbx,%rdi
 6e0:	31 f6                	xor    %esi,%esi
 6e2:	31 c0                	xor    %eax,%eax
 6e4:	ff d1                	call   *%rcx
 6e6:	41 ff d6             	call   *%r14
 6e9:	c5 fb 5c 04 24       	vsubsd (%rsp),%xmm0,%xmm0
 6ee:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 6f5:	00 00 00 
 6f8:	c5 fb 59 00          	vmulsd (%rax),%xmm0,%xmm0
 6fc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 703:	00 00 00 
 706:	48 83 c4 08          	add    $0x8,%rsp
 70a:	5b                   	pop    %rbx
 70b:	41 5e                	pop    %r14
 70d:	ff e0                	jmp    *%rax
 70f:	90                   	nop

0000000000000710 <_mlir_main..omp_par>:
 710:	f3 0f 1e fa          	endbr64 
 714:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 71b:	00 00 00 
 71e:	ff e0                	jmp    *%rax
