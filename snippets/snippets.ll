; ModuleID = 'snippets.bpa8fwe8-cgu.0'
source_filename = "snippets.bpa8fwe8-cgu.0"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: norecurse nounwind uwtable
define void @snippet_vector4_add(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly dereferenceable(16) %a, <4 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 {
start:
  %1 = load <4 x float>, <4 x float>* %a, align 16
  %2 = load <4 x float>, <4 x float>* %b, align 16
  %3 = fadd <4 x float> %1, %2
  store <4 x float> %3, <4 x float>* %0, align 16, !alias.scope !0
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_ref_vector4_sub(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly dereferenceable(16) %a, <4 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 {
start:
  %1 = load <4 x float>, <4 x float>* %a, align 16, !alias.scope !5, !noalias !8
  %2 = load <4 x float>, <4 x float>* %b, align 16, !alias.scope !11, !noalias !12
  %3 = fsub <4 x float> %1, %2
  store <4 x float> %3, <4 x float>* %0, align 16, !alias.scope !13, !noalias !16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_m128_mul(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly dereferenceable(16) %a, <4 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 {
start:
  %1 = load <4 x float>, <4 x float>* %a, align 16
  %2 = load <4 x float>, <4 x float>* %b, align 16
  %3 = fmul <4 x float> %1, %2
  store <4 x float> %3, <4 x float>* %0, align 16, !alias.scope !17
  ret void
}

attributes #0 = { norecurse nounwind uwtable }

!0 = !{!1, !3}
!1 = distinct !{!1, !2, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3new17h9faea46e33f51796E: argument 0"}
!2 = distinct !{!2, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3new17h9faea46e33f51796E"}
!3 = distinct !{!3, !4, !"_ZN74_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h39b847ed720a54adE: argument 0"}
!4 = distinct !{!4, !"_ZN74_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17h39b847ed720a54adE"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17hd048e1246beacaf8E: %self"}
!7 = distinct !{!7, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17hd048e1246beacaf8E"}
!8 = !{!9, !10}
!9 = distinct !{!9, !7, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17hd048e1246beacaf8E: argument 0"}
!10 = distinct !{!10, !7, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17hd048e1246beacaf8E: %other"}
!11 = !{!10}
!12 = !{!9, !6}
!13 = !{!14, !9}
!14 = distinct !{!14, !15, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3new17h9faea46e33f51796E: argument 0"}
!15 = distinct !{!15, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3new17h9faea46e33f51796E"}
!16 = !{!6, !10}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core8coresimd3x863sse10_mm_mul_ps17h2ebcf856faf47894E: argument 0"}
!19 = distinct !{!19, !"_ZN4core8coresimd3x863sse10_mm_mul_ps17h2ebcf856faf47894E"}
