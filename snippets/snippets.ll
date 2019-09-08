; ModuleID = 'snippets.bpa8fwe8-cgu.0'
source_filename = "snippets.bpa8fwe8-cgu.0"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: norecurse nounwind uwtable
define void @snippet_vector1_add(<1 x float>* noalias nocapture sret dereferenceable(4), <1 x float>* noalias nocapture readonly dereferenceable(4) %a, <1 x float>* noalias nocapture readonly dereferenceable(4) %b) unnamed_addr #0 {
start:
  %1 = getelementptr inbounds <1 x float>, <1 x float>* %a, i64 0, i64 0
  %2 = load float, float* %1, align 4
  %3 = getelementptr inbounds <1 x float>, <1 x float>* %b, i64 0, i64 0
  %4 = load float, float* %3, align 4
  %5 = fadd float %2, %4
  %6 = getelementptr inbounds <1 x float>, <1 x float>* %0, i64 0, i64 0
  store float %5, float* %6, align 4, !alias.scope !0
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_vector2_add(<2 x float>* noalias nocapture sret dereferenceable(8), <2 x float>* noalias nocapture readonly dereferenceable(8) %a, <2 x float>* noalias nocapture readonly dereferenceable(8) %b) unnamed_addr #0 {
start:
  %1 = load <2 x float>, <2 x float>* %a, align 8
  %2 = load <2 x float>, <2 x float>* %b, align 8
  %3 = extractelement <2 x float> %1, i64 0
  %4 = extractelement <2 x float> %2, i64 0
  %5 = fadd float %3, %4
  %6 = extractelement <2 x float> %1, i64 1
  %7 = extractelement <2 x float> %2, i64 1
  %8 = fadd float %6, %7
  %9 = getelementptr inbounds <2 x float>, <2 x float>* %0, i64 0, i64 0
  store float %5, float* %9, align 8, !alias.scope !5
  %10 = getelementptr inbounds <2 x float>, <2 x float>* %0, i64 0, i64 1
  store float %8, float* %10, align 4, !alias.scope !5
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_vector3_add(<3 x float>* noalias nocapture sret dereferenceable(16), <3 x float>* noalias nocapture readonly dereferenceable(16) %a, <3 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 {
start:
  %1 = load <3 x float>, <3 x float>* %a, align 16
  %2 = load <3 x float>, <3 x float>* %b, align 16
  %3 = extractelement <3 x float> %1, i64 0
  %4 = extractelement <3 x float> %2, i64 0
  %5 = fadd float %3, %4
  %6 = extractelement <3 x float> %1, i64 1
  %7 = extractelement <3 x float> %2, i64 1
  %8 = fadd float %6, %7
  %9 = extractelement <3 x float> %1, i64 2
  %10 = extractelement <3 x float> %2, i64 2
  %11 = fadd float %9, %10
  %12 = getelementptr inbounds <3 x float>, <3 x float>* %0, i64 0, i64 0
  store float %5, float* %12, align 16, !alias.scope !10
  %13 = getelementptr inbounds <3 x float>, <3 x float>* %0, i64 0, i64 1
  store float %8, float* %13, align 4, !alias.scope !10
  %14 = getelementptr inbounds <3 x float>, <3 x float>* %0, i64 0, i64 2
  store float %11, float* %14, align 8, !alias.scope !10
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_vector4_add(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly dereferenceable(16) %a, <4 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 {
start:
  %1 = load <4 x float>, <4 x float>* %a, align 16
  %2 = load <4 x float>, <4 x float>* %b, align 16
  %3 = fadd <4 x float> %1, %2
  store <4 x float> %3, <4 x float>* %0, align 16, !alias.scope !15
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_ref_vector4_sub(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly dereferenceable(16) %a, <4 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 {
start:
  %1 = load <4 x float>, <4 x float>* %a, align 16, !alias.scope !20, !noalias !23
  %2 = load <4 x float>, <4 x float>* %b, align 16, !alias.scope !26, !noalias !27
  %3 = fsub <4 x float> %1, %2
  store <4 x float> %3, <4 x float>* %0, align 16, !alias.scope !28, !noalias !31
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_m128_mul(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly dereferenceable(16) %a, <4 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 {
start:
  %1 = load <4 x float>, <4 x float>* %a, align 16
  %2 = load <4 x float>, <4 x float>* %b, align 16
  %3 = fmul <4 x float> %1, %2
  store <4 x float> %3, <4 x float>* %0, align 16, !alias.scope !32
  ret void
}

attributes #0 = { norecurse nounwind uwtable }

!0 = !{!1, !3}
!1 = distinct !{!1, !2, !"_ZN41_$LT$cgmath..vector..Vector1$LT$S$GT$$GT$3new17h6314ca1659bcbf8aE: argument 0"}
!2 = distinct !{!2, !"_ZN41_$LT$cgmath..vector..Vector1$LT$S$GT$$GT$3new17h6314ca1659bcbf8aE"}
!3 = distinct !{!3, !4, !"_ZN74_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h792aca8bef406f26E: argument 0"}
!4 = distinct !{!4, !"_ZN74_$LT$cgmath..vector..Vector1$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h792aca8bef406f26E"}
!5 = !{!6, !8}
!6 = distinct !{!6, !7, !"_ZN41_$LT$cgmath..vector..Vector2$LT$S$GT$$GT$3new17hc62494cc948f2979E: argument 0"}
!7 = distinct !{!7, !"_ZN41_$LT$cgmath..vector..Vector2$LT$S$GT$$GT$3new17hc62494cc948f2979E"}
!8 = distinct !{!8, !9, !"_ZN74_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17hff2df1c88fd3b9e2E: argument 0"}
!9 = distinct !{!9, !"_ZN74_$LT$cgmath..vector..Vector2$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17hff2df1c88fd3b9e2E"}
!10 = !{!11, !13}
!11 = distinct !{!11, !12, !"_ZN41_$LT$cgmath..vector..Vector3$LT$S$GT$$GT$3new17h61e0190add02effdE: argument 0"}
!12 = distinct !{!12, !"_ZN41_$LT$cgmath..vector..Vector3$LT$S$GT$$GT$3new17h61e0190add02effdE"}
!13 = distinct !{!13, !14, !"_ZN74_$LT$cgmath..vector..Vector3$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h8c2961aa5580dd8dE: argument 0"}
!14 = distinct !{!14, !"_ZN74_$LT$cgmath..vector..Vector3$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h8c2961aa5580dd8dE"}
!15 = !{!16, !18}
!16 = distinct !{!16, !17, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3new17h9faea46e33f51796E: argument 0"}
!17 = distinct !{!17, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3new17h9faea46e33f51796E"}
!18 = distinct !{!18, !19, !"_ZN74_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h39b847ed720a54adE: argument 0"}
!19 = distinct !{!19, !"_ZN74_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h39b847ed720a54adE"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17hd048e1246beacaf8E: %self"}
!22 = distinct !{!22, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17hd048e1246beacaf8E"}
!23 = !{!24, !25}
!24 = distinct !{!24, !22, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17hd048e1246beacaf8E: argument 0"}
!25 = distinct !{!25, !22, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17hd048e1246beacaf8E: %other"}
!26 = !{!25}
!27 = !{!24, !21}
!28 = !{!29, !24}
!29 = distinct !{!29, !30, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3new17h9faea46e33f51796E: argument 0"}
!30 = distinct !{!30, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3new17h9faea46e33f51796E"}
!31 = !{!21, !25}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN4core8coresimd3x863sse10_mm_mul_ps17h2ebcf856faf47894E: argument 0"}
!34 = distinct !{!34, !"_ZN4core8coresimd3x863sse10_mm_mul_ps17h2ebcf856faf47894E"}
