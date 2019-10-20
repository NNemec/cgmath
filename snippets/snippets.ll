; ModuleID = 'snippets.bpa8fwe8-cgu.0'
source_filename = "snippets.bpa8fwe8-cgu.0"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: norecurse nounwind uwtable
define void @snippet_vector1_add(<1 x float>* noalias nocapture sret dereferenceable(4), <1 x float>* noalias nocapture readonly dereferenceable(4) %a, <1 x float>* noalias nocapture readonly dereferenceable(4) %b) unnamed_addr #0 personality i32 (...)* @__CxxFrameHandler3 {
start:
  %1 = getelementptr inbounds <1 x float>, <1 x float>* %a, i64 0, i64 0
  %2 = load float, float* %1, align 4
  %3 = getelementptr inbounds <1 x float>, <1 x float>* %b, i64 0, i64 0
  %4 = load float, float* %3, align 4
  %5 = fadd float %2, %4
  %6 = getelementptr inbounds <1 x float>, <1 x float>* %0, i64 0, i64 0
  store float %5, float* %6, align 4, !alias.scope !0, !noalias !7
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_vector2_add(<2 x float>* noalias nocapture sret dereferenceable(8), <2 x float>* noalias nocapture readonly dereferenceable(8) %a, <2 x float>* noalias nocapture readonly dereferenceable(8) %b) unnamed_addr #0 personality i32 (...)* @__CxxFrameHandler3 {
start:
  %1 = getelementptr inbounds <2 x float>, <2 x float>* %a, i64 0, i64 0
  %2 = load float, float* %1, align 8
  %.sroa_idx = getelementptr inbounds <2 x float>, <2 x float>* %a, i64 0, i64 1
  %3 = load float, float* %.sroa_idx, align 4
  %4 = getelementptr inbounds <2 x float>, <2 x float>* %b, i64 0, i64 0
  %5 = load float, float* %4, align 8
  %.sroa_idx8 = getelementptr inbounds <2 x float>, <2 x float>* %b, i64 0, i64 1
  %6 = load float, float* %.sroa_idx8, align 4
  %7 = fadd float %2, %5
  %8 = fadd float %3, %6
  %9 = getelementptr inbounds <2 x float>, <2 x float>* %0, i64 0, i64 0
  store float %7, float* %9, align 8, !alias.scope !12, !noalias !19
  %10 = getelementptr inbounds <2 x float>, <2 x float>* %0, i64 0, i64 1
  store float %8, float* %10, align 4, !alias.scope !12, !noalias !19
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_vector3_add(<3 x float>* noalias nocapture sret dereferenceable(16), <3 x float>* noalias nocapture readonly dereferenceable(16) %a, <3 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 personality i32 (...)* @__CxxFrameHandler3 {
start:
  %1 = load <3 x float>, <3 x float>* %a, align 16
  %2 = load <3 x float>, <3 x float>* %b, align 16
  %arg.0.vec.extract.i.i = extractelement <3 x float> %1, i32 0
  %arg.4.vec.extract.i.i = extractelement <3 x float> %1, i32 1
  %arg.8.vec.extract.i.i = extractelement <3 x float> %1, i32 2
  %arg1.0.vec.extract.i.i = extractelement <3 x float> %2, i32 0
  %arg1.4.vec.extract.i.i = extractelement <3 x float> %2, i32 1
  %arg1.8.vec.extract.i.i = extractelement <3 x float> %2, i32 2
  %3 = fadd float %arg.0.vec.extract.i.i, %arg1.0.vec.extract.i.i
  %4 = fadd float %arg.4.vec.extract.i.i, %arg1.4.vec.extract.i.i
  %5 = fadd float %arg.8.vec.extract.i.i, %arg1.8.vec.extract.i.i
  %6 = getelementptr inbounds <3 x float>, <3 x float>* %0, i64 0, i64 0
  store float %3, float* %6, align 16, !alias.scope !24
  %7 = getelementptr inbounds <3 x float>, <3 x float>* %0, i64 0, i64 1
  store float %4, float* %7, align 4, !alias.scope !24
  %8 = getelementptr inbounds <3 x float>, <3 x float>* %0, i64 0, i64 2
  store float %5, float* %8, align 8, !alias.scope !24
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_vector4_add(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly dereferenceable(16) %a, <4 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 personality i32 (...)* @__CxxFrameHandler3 {
start:
  %1 = load <4 x float>, <4 x float>* %a, align 16
  %2 = load <4 x float>, <4 x float>* %b, align 16
  %3 = fadd <4 x float> %1, %2
  store <4 x float> %3, <4 x float>* %0, align 16, !alias.scope !31, !noalias !38
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_ref_vector4_sub(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly dereferenceable(16) %a, <4 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 personality i32 (...)* @__CxxFrameHandler3 {
start:
  %a.val = load <4 x float>, <4 x float>* %a, align 16
  %b.val = load <4 x float>, <4 x float>* %b, align 16
  %1 = fsub <4 x float> %a.val, %b.val
  store <4 x float> %1, <4 x float>* %0, align 16, !alias.scope !41, !noalias !48
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_m128_mul(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly dereferenceable(16) %a, <4 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 {
start:
  %1 = load <4 x float>, <4 x float>* %a, align 16
  %2 = load <4 x float>, <4 x float>* %b, align 16
  %3 = fmul <4 x float> %1, %2
  store <4 x float> %3, <4 x float>* %0, align 16, !alias.scope !51
  ret void
}

declare i32 @__CxxFrameHandler3(...) unnamed_addr #1

attributes #0 = { norecurse nounwind uwtable }
attributes #1 = { "target-cpu"="x86-64" }

!0 = !{!1, !3, !5}
!1 = distinct !{!1, !2, !"_ZN41_$LT$cgmath..vector..Vector1$LT$S$GT$$GT$3zip17h7b1c4753a27fe910E: argument 0"}
!2 = distinct !{!2, !"_ZN41_$LT$cgmath..vector..Vector1$LT$S$GT$$GT$3zip17h7b1c4753a27fe910E"}
!3 = distinct !{!3, !4, !"_ZN83_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17h5309ff13d6628f76E: argument 0"}
!4 = distinct !{!4, !"_ZN83_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17h5309ff13d6628f76E"}
!5 = distinct !{!5, !6, !"_ZN74_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h792aca8bef406f26E: argument 0"}
!6 = distinct !{!6, !"_ZN74_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h792aca8bef406f26E"}
!7 = !{!8, !9, !10, !11}
!8 = distinct !{!8, !4, !"_ZN83_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17h5309ff13d6628f76E: %self"}
!9 = distinct !{!9, !4, !"_ZN83_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17h5309ff13d6628f76E: %rhs"}
!10 = distinct !{!10, !6, !"_ZN74_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h792aca8bef406f26E: %self"}
!11 = distinct !{!11, !6, !"_ZN74_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h792aca8bef406f26E: %other"}
!12 = !{!13, !15, !17}
!13 = distinct !{!13, !14, !"_ZN41_$LT$cgmath..vector..Vector2$LT$S$GT$$GT$3zip17h1709f359fced8b25E: argument 0"}
!14 = distinct !{!14, !"_ZN41_$LT$cgmath..vector..Vector2$LT$S$GT$$GT$3zip17h1709f359fced8b25E"}
!15 = distinct !{!15, !16, !"_ZN83_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17hee85f130c8b750a6E: argument 0"}
!16 = distinct !{!16, !"_ZN83_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17hee85f130c8b750a6E"}
!17 = distinct !{!17, !18, !"_ZN74_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17hff2df1c88fd3b9e2E: argument 0"}
!18 = distinct !{!18, !"_ZN74_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17hff2df1c88fd3b9e2E"}
!19 = !{!20, !21, !22, !23}
!20 = distinct !{!20, !16, !"_ZN83_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17hee85f130c8b750a6E: %self"}
!21 = distinct !{!21, !16, !"_ZN83_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17hee85f130c8b750a6E: %rhs"}
!22 = distinct !{!22, !18, !"_ZN74_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17hff2df1c88fd3b9e2E: %self"}
!23 = distinct !{!23, !18, !"_ZN74_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17hff2df1c88fd3b9e2E: %other"}
!24 = !{!25, !27, !29}
!25 = distinct !{!25, !26, !"_ZN41_$LT$cgmath..vector..Vector3$LT$S$GT$$GT$3zip17hc6008e6516cddd92E: argument 0"}
!26 = distinct !{!26, !"_ZN41_$LT$cgmath..vector..Vector3$LT$S$GT$$GT$3zip17hc6008e6516cddd92E"}
!27 = distinct !{!27, !28, !"_ZN83_$LT$cgmath..vector..Vector3$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17h7ea16e086e487cd0E: argument 0"}
!28 = distinct !{!28, !"_ZN83_$LT$cgmath..vector..Vector3$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17h7ea16e086e487cd0E"}
!29 = distinct !{!29, !30, !"_ZN74_$LT$cgmath..vector..Vector3$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h8c2961aa5580dd8dE: argument 0"}
!30 = distinct !{!30, !"_ZN74_$LT$cgmath..vector..Vector3$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h8c2961aa5580dd8dE"}
!31 = !{!32, !34, !36}
!32 = distinct !{!32, !33, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3zip17heed997eac7472196E: argument 0"}
!33 = distinct !{!33, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3zip17heed997eac7472196E"}
!34 = distinct !{!34, !35, !"_ZN83_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17hfc212be9323376e3E: argument 0"}
!35 = distinct !{!35, !"_ZN83_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17hfc212be9323376e3E"}
!36 = distinct !{!36, !37, !"_ZN74_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h39b847ed720a54adE: argument 0"}
!37 = distinct !{!37, !"_ZN74_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h39b847ed720a54adE"}
!38 = !{!39, !40}
!39 = distinct !{!39, !33, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3zip17heed997eac7472196E: %self"}
!40 = distinct !{!40, !33, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3zip17heed997eac7472196E: %v2"}
!41 = !{!42, !44, !46}
!42 = distinct !{!42, !43, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3zip17h0c2eaa1bc2077138E: argument 0"}
!43 = distinct !{!43, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3zip17h0c2eaa1bc2077138E"}
!44 = distinct !{!44, !45, !"_ZN83_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16sub_element_wise17h78fe6ed1a80961b7E: argument 0"}
!45 = distinct !{!45, !"_ZN83_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16sub_element_wise17h78fe6ed1a80961b7E"}
!46 = distinct !{!46, !47, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17hd048e1246beacaf8E: argument 0"}
!47 = distinct !{!47, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17hd048e1246beacaf8E"}
!48 = !{!49, !50}
!49 = distinct !{!49, !43, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3zip17h0c2eaa1bc2077138E: %self"}
!50 = distinct !{!50, !43, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3zip17h0c2eaa1bc2077138E: %v2"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN4core8coresimd3x863sse10_mm_mul_ps17h2ebcf856faf47894E: argument 0"}
!53 = distinct !{!53, !"_ZN4core8coresimd3x863sse10_mm_mul_ps17h2ebcf856faf47894E"}
