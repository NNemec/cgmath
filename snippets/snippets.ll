; ModuleID = 'snippets.ebx1m8nd-cgu.0'
source_filename = "snippets.ebx1m8nd-cgu.0"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nofree norecurse nounwind uwtable
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

; Function Attrs: nofree norecurse nounwind uwtable
define void @snippet_vector2_add(<2 x float>* noalias nocapture sret dereferenceable(8), <2 x float>* noalias nocapture readonly dereferenceable(8) %a, <2 x float>* noalias nocapture readonly dereferenceable(8) %b) unnamed_addr #0 personality i32 (...)* @__CxxFrameHandler3 {
start:
  %1 = getelementptr inbounds <2 x float>, <2 x float>* %a, i64 0, i64 0
  %2 = load float, float* %1, align 8
  %.sroa_idx = getelementptr inbounds <2 x float>, <2 x float>* %a, i64 0, i64 1
  %3 = load float, float* %.sroa_idx, align 4
  %4 = getelementptr inbounds <2 x float>, <2 x float>* %b, i64 0, i64 0
  %5 = load float, float* %4, align 8
  %.sroa_idx7 = getelementptr inbounds <2 x float>, <2 x float>* %b, i64 0, i64 1
  %6 = load float, float* %.sroa_idx7, align 4
  %7 = fadd float %2, %5
  %8 = fadd float %3, %6
  %9 = getelementptr inbounds <2 x float>, <2 x float>* %0, i64 0, i64 0
  store float %7, float* %9, align 8, !alias.scope !12, !noalias !19
  %10 = getelementptr inbounds <2 x float>, <2 x float>* %0, i64 0, i64 1
  store float %8, float* %10, align 4, !alias.scope !12, !noalias !19
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @snippet_vector3_add(<3 x float>* noalias nocapture sret dereferenceable(16), <3 x float>* noalias nocapture readonly dereferenceable(16) %a, <3 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 personality i32 (...)* @__CxxFrameHandler3 {
start:
  %1 = load <3 x float>, <3 x float>* %a, align 16
  %2 = load <3 x float>, <3 x float>* %b, align 16
  %.0.vec.extract.i.i = extractelement <3 x float> %1, i32 0
  %.4.vec.extract.i.i = extractelement <3 x float> %1, i32 1
  %.8.vec.extract.i.i = extractelement <3 x float> %1, i32 2
  %.0.vec.extract2.i.i = extractelement <3 x float> %2, i32 0
  %.4.vec.extract4.i.i = extractelement <3 x float> %2, i32 1
  %.8.vec.extract6.i.i = extractelement <3 x float> %2, i32 2
  %3 = fadd float %.0.vec.extract.i.i, %.0.vec.extract2.i.i
  %4 = fadd float %.4.vec.extract.i.i, %.4.vec.extract4.i.i
  %5 = fadd float %.8.vec.extract.i.i, %.8.vec.extract6.i.i
  %6 = getelementptr inbounds <3 x float>, <3 x float>* %0, i64 0, i64 0
  store float %3, float* %6, align 16, !alias.scope !24
  %7 = getelementptr inbounds <3 x float>, <3 x float>* %0, i64 0, i64 1
  store float %4, float* %7, align 4, !alias.scope !24
  %8 = getelementptr inbounds <3 x float>, <3 x float>* %0, i64 0, i64 2
  store float %5, float* %8, align 8, !alias.scope !24
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @snippet_vector4_add(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly dereferenceable(16) %a, <4 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 personality i32 (...)* @__CxxFrameHandler3 {
start:
  %1 = load <4 x float>, <4 x float>* %a, align 16
  %2 = load <4 x float>, <4 x float>* %b, align 16
  %3 = fadd <4 x float> %1, %2
  store <4 x float> %3, <4 x float>* %0, align 16, !alias.scope !31, !noalias !38
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @snippet_ref_vector4_sub(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly align 16 dereferenceable(16) %a, <4 x float>* noalias nocapture readonly align 16 dereferenceable(16) %b) unnamed_addr #0 personality i32 (...)* @__CxxFrameHandler3 {
start:
  %a.val = load <4 x float>, <4 x float>* %a, align 16
  %b.val = load <4 x float>, <4 x float>* %b, align 16
  %1 = fsub <4 x float> %a.val, %b.val
  store <4 x float> %1, <4 x float>* %0, align 16, !alias.scope !41, !noalias !48
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @snippet_m128_mul(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly dereferenceable(16) %a, <4 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 {
start:
  %1 = load <4 x float>, <4 x float>* %a, align 16
  %2 = load <4 x float>, <4 x float>* %b, align 16
  %3 = fmul <4 x float> %1, %2
  store <4 x float> %3, <4 x float>* %0, align 16, !alias.scope !51, !noalias !54
  ret void
}

declare i32 @__CxxFrameHandler3(...) unnamed_addr #1

attributes #0 = { nofree norecurse nounwind uwtable "target-cpu"="x86-64" }
attributes #1 = { "target-cpu"="x86-64" }

!0 = !{!1, !3, !5}
!1 = distinct !{!1, !2, !"_ZN6cgmath6vector16Vector1$LT$S$GT$3zip17hb9ea0e702f2ed78bE: argument 0"}
!2 = distinct !{!2, !"_ZN6cgmath6vector16Vector1$LT$S$GT$3zip17hb9ea0e702f2ed78bE"}
!3 = distinct !{!3, !4, !"_ZN83_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17ha192393c79bdfad5E: argument 0"}
!4 = distinct !{!4, !"_ZN83_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17ha192393c79bdfad5E"}
!5 = distinct !{!5, !6, !"_ZN74_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17habb16267a045ea79E: argument 0"}
!6 = distinct !{!6, !"_ZN74_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17habb16267a045ea79E"}
!7 = !{!8, !9, !10, !11}
!8 = distinct !{!8, !4, !"_ZN83_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17ha192393c79bdfad5E: %self"}
!9 = distinct !{!9, !4, !"_ZN83_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17ha192393c79bdfad5E: %rhs"}
!10 = distinct !{!10, !6, !"_ZN74_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17habb16267a045ea79E: %self"}
!11 = distinct !{!11, !6, !"_ZN74_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17habb16267a045ea79E: %other"}
!12 = !{!13, !15, !17}
!13 = distinct !{!13, !14, !"_ZN6cgmath6vector16Vector2$LT$S$GT$3zip17h34f0447d28bf8cbeE: argument 0"}
!14 = distinct !{!14, !"_ZN6cgmath6vector16Vector2$LT$S$GT$3zip17h34f0447d28bf8cbeE"}
!15 = distinct !{!15, !16, !"_ZN83_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17h9c9b35cd563e8d3bE: argument 0"}
!16 = distinct !{!16, !"_ZN83_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17h9c9b35cd563e8d3bE"}
!17 = distinct !{!17, !18, !"_ZN74_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h1483dd16aba1addeE: argument 0"}
!18 = distinct !{!18, !"_ZN74_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h1483dd16aba1addeE"}
!19 = !{!20, !21, !22, !23}
!20 = distinct !{!20, !16, !"_ZN83_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17h9c9b35cd563e8d3bE: %self"}
!21 = distinct !{!21, !16, !"_ZN83_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17h9c9b35cd563e8d3bE: %rhs"}
!22 = distinct !{!22, !18, !"_ZN74_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h1483dd16aba1addeE: %self"}
!23 = distinct !{!23, !18, !"_ZN74_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h1483dd16aba1addeE: %other"}
!24 = !{!25, !27, !29}
!25 = distinct !{!25, !26, !"_ZN6cgmath6vector16Vector3$LT$S$GT$3zip17h19df02fc7ce061a3E: argument 0"}
!26 = distinct !{!26, !"_ZN6cgmath6vector16Vector3$LT$S$GT$3zip17h19df02fc7ce061a3E"}
!27 = distinct !{!27, !28, !"_ZN83_$LT$cgmath..vector..Vector3$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17hace783f9bfba47f1E: argument 0"}
!28 = distinct !{!28, !"_ZN83_$LT$cgmath..vector..Vector3$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17hace783f9bfba47f1E"}
!29 = distinct !{!29, !30, !"_ZN74_$LT$cgmath..vector..Vector3$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17hb8d020436f972fc8E: argument 0"}
!30 = distinct !{!30, !"_ZN74_$LT$cgmath..vector..Vector3$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17hb8d020436f972fc8E"}
!31 = !{!32, !34, !36}
!32 = distinct !{!32, !33, !"_ZN6cgmath6vector16Vector4$LT$S$GT$3zip17h4cf42ae57b0f56b9E: argument 0"}
!33 = distinct !{!33, !"_ZN6cgmath6vector16Vector4$LT$S$GT$3zip17h4cf42ae57b0f56b9E"}
!34 = distinct !{!34, !35, !"_ZN83_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17hb778bbd61ed4584bE: argument 0"}
!35 = distinct !{!35, !"_ZN83_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16add_element_wise17hb778bbd61ed4584bE"}
!36 = distinct !{!36, !37, !"_ZN74_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17he446bdbac1163f43E: argument 0"}
!37 = distinct !{!37, !"_ZN74_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17he446bdbac1163f43E"}
!38 = !{!39, !40}
!39 = distinct !{!39, !33, !"_ZN6cgmath6vector16Vector4$LT$S$GT$3zip17h4cf42ae57b0f56b9E: %self"}
!40 = distinct !{!40, !33, !"_ZN6cgmath6vector16Vector4$LT$S$GT$3zip17h4cf42ae57b0f56b9E: %v2"}
!41 = !{!42, !44, !46}
!42 = distinct !{!42, !43, !"_ZN6cgmath6vector16Vector4$LT$S$GT$3zip17h244c1dbd786b1933E: argument 0"}
!43 = distinct !{!43, !"_ZN6cgmath6vector16Vector4$LT$S$GT$3zip17h244c1dbd786b1933E"}
!44 = distinct !{!44, !45, !"_ZN83_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16sub_element_wise17h92ecaa99ea94f873E: argument 0"}
!45 = distinct !{!45, !"_ZN83_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$cgmath..structure..ElementWise$GT$16sub_element_wise17h92ecaa99ea94f873E"}
!46 = distinct !{!46, !47, !"_ZN122_$LT$$RF$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17hc72498b2b33b3775E: argument 0"}
!47 = distinct !{!47, !"_ZN122_$LT$$RF$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17hc72498b2b33b3775E"}
!48 = !{!49, !50}
!49 = distinct !{!49, !43, !"_ZN6cgmath6vector16Vector4$LT$S$GT$3zip17h244c1dbd786b1933E: %self"}
!50 = distinct !{!50, !43, !"_ZN6cgmath6vector16Vector4$LT$S$GT$3zip17h244c1dbd786b1933E: %v2"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN4core9core_arch3x863sse10_mm_mul_ps17h0aa565a6fadc5756E: argument 0"}
!53 = distinct !{!53, !"_ZN4core9core_arch3x863sse10_mm_mul_ps17h0aa565a6fadc5756E"}
!54 = !{!55, !56}
!55 = distinct !{!55, !53, !"_ZN4core9core_arch3x863sse10_mm_mul_ps17h0aa565a6fadc5756E: %a"}
!56 = distinct !{!56, !53, !"_ZN4core9core_arch3x863sse10_mm_mul_ps17h0aa565a6fadc5756E: %b"}
