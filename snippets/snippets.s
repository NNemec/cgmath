	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"snippets.ebx1m8nd-cgu.0"
	.def	 snippet_vector1_add;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,snippet_vector1_add
	.globl	snippet_vector1_add
	.p2align	4, 0x90
snippet_vector1_add:
	movq	%rcx, %rax
	movss	(%rdx), %xmm0
	addss	(%r8), %xmm0
	movss	%xmm0, (%rcx)
	retq

	.def	 snippet_vector2_add;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,snippet_vector2_add
	.globl	snippet_vector2_add
	.p2align	4, 0x90
snippet_vector2_add:
	movq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	4(%rdx), %xmm1
	addss	(%r8), %xmm0
	addss	4(%r8), %xmm1
	movss	%xmm0, (%rcx)
	movss	%xmm1, 4(%rcx)
	retq

	.def	 snippet_vector3_add;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,snippet_vector3_add
	.globl	snippet_vector3_add
	.p2align	4, 0x90
snippet_vector3_add:
	movq	%rcx, %rax
	movaps	(%rdx), %xmm0
	movaps	(%r8), %xmm1
	movaps	%xmm0, %xmm2
	shufps	$229, %xmm0, %xmm2
	movaps	%xmm0, %xmm3
	unpckhpd	%xmm0, %xmm3
	movaps	%xmm1, %xmm4
	shufps	$229, %xmm1, %xmm4
	addss	%xmm1, %xmm0
	movhlps	%xmm1, %xmm1
	addss	%xmm2, %xmm4
	addss	%xmm3, %xmm1
	movss	%xmm0, (%rcx)
	movss	%xmm4, 4(%rcx)
	movss	%xmm1, 8(%rcx)
	retq

	.def	 snippet_vector4_add;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,snippet_vector4_add
	.globl	snippet_vector4_add
	.p2align	4, 0x90
snippet_vector4_add:
	movq	%rcx, %rax
	movaps	(%rdx), %xmm0
	addps	(%r8), %xmm0
	movaps	%xmm0, (%rcx)
	retq

	.def	 snippet_ref_vector4_sub;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,snippet_ref_vector4_sub
	.globl	snippet_ref_vector4_sub
	.p2align	4, 0x90
snippet_ref_vector4_sub:
	movq	%rcx, %rax
	movaps	(%rdx), %xmm0
	subps	(%r8), %xmm0
	movaps	%xmm0, (%rcx)
	retq

	.def	 snippet_m128_mul;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,snippet_m128_mul
	.globl	snippet_m128_mul
	.p2align	4, 0x90
snippet_m128_mul:
	movq	%rcx, %rax
	movaps	(%rdx), %xmm0
	mulps	(%r8), %xmm0
	movaps	%xmm0, (%rcx)
	retq


	.globl	_fltused
