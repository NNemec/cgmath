	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
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


