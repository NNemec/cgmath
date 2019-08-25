; ModuleID = 'snippets.bm5z3la2-cgu.0'
source_filename = "snippets.bm5z3la2-cgu.0"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"cgmath::vector::Vector4<f32>" = type { [0 x i32], float, [0 x i32], float, [0 x i32], float, [0 x i32], float, [0 x i32] }

; Function Attrs: nounwind uwtable
define void @snippet_vector4_add(%"cgmath::vector::Vector4<f32>"* noalias nocapture sret dereferenceable(16), %"cgmath::vector::Vector4<f32>"* noalias nocapture readonly dereferenceable(16) %a, %"cgmath::vector::Vector4<f32>"* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #0 {
start:
  %1 = bitcast %"cgmath::vector::Vector4<f32>"* %a to <4 x float>*
  %2 = load <4 x float>, <4 x float>* %1, align 4
  %3 = bitcast %"cgmath::vector::Vector4<f32>"* %b to <4 x float>*
  %4 = load <4 x float>, <4 x float>* %3, align 4
  %5 = fadd <4 x float> %2, %4
  %6 = bitcast %"cgmath::vector::Vector4<f32>"* %0 to <4 x float>*
  store <4 x float> %5, <4 x float>* %6, align 4, !alias.scope !0, !noalias !5
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_ref_vector4_sub(%"cgmath::vector::Vector4<f32>"* noalias nocapture sret dereferenceable(16), %"cgmath::vector::Vector4<f32>"* noalias nocapture readonly dereferenceable(16) %a, %"cgmath::vector::Vector4<f32>"* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #1 {
start:
  %1 = bitcast %"cgmath::vector::Vector4<f32>"* %a to <4 x float>*
  %2 = load <4 x float>, <4 x float>* %1, align 4, !alias.scope !8, !noalias !11
  %3 = bitcast %"cgmath::vector::Vector4<f32>"* %b to <4 x float>*
  %4 = load <4 x float>, <4 x float>* %3, align 4, !alias.scope !14, !noalias !15
  %5 = fsub <4 x float> %2, %4
  %6 = bitcast %"cgmath::vector::Vector4<f32>"* %0 to <4 x float>*
  store <4 x float> %5, <4 x float>* %6, align 4, !alias.scope !16, !noalias !19
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @snippet_m128_mul(<4 x float>* noalias nocapture sret dereferenceable(16), <4 x float>* noalias nocapture readonly dereferenceable(16) %a, <4 x float>* noalias nocapture readonly dereferenceable(16) %b) unnamed_addr #1 {
start:
  %1 = load <4 x float>, <4 x float>* %a, align 16
  %2 = load <4 x float>, <4 x float>* %b, align 16
  %3 = fmul <4 x float> %1, %2
  store <4 x float> %3, <4 x float>* %0, align 16, !alias.scope !20
  ret void
}

attributes #0 = { nounwind uwtable }
attributes #1 = { norecurse nounwind uwtable }

!0 = !{!1, !3}
!1 = distinct !{!1, !2, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3new17h75f3912caf223a39E: argument 0"}
!2 = distinct !{!2, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3new17h75f3912caf223a39E"}
!3 = distinct !{!3, !4, !"_ZN74_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17hf3f3707ba45e4c28E: argument 0"}
!4 = distinct !{!4, !"_ZN74_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17hf3f3707ba45e4c28E"}
!5 = !{!6, !7}
!6 = distinct !{!6, !4, !"_ZN74_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17hf3f3707ba45e4c28E: %self"}
!7 = distinct !{!7, !4, !"_ZN74_$LT$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Add$GT$3add17hf3f3707ba45e4c28E: %other"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17ha257bb9dbb135885E: %self"}
!10 = distinct !{!10, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17ha257bb9dbb135885E"}
!11 = !{!12, !13}
!12 = distinct !{!12, !10, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17ha257bb9dbb135885E: argument 0"}
!13 = distinct !{!13, !10, !"_ZN144_$LT$$RF$$u27$b$u20$cgmath..vector..Vector4$LT$S$GT$$u20$as$u20$core..ops..arith..Sub$LT$$RF$$u27$a$u20$cgmath..vector..Vector4$LT$S$GT$$GT$$GT$3sub17ha257bb9dbb135885E: %other"}
!14 = !{!13}
!15 = !{!12, !9}
!16 = !{!17, !12}
!17 = distinct !{!17, !18, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3new17h75f3912caf223a39E: argument 0"}
!18 = distinct !{!18, !"_ZN41_$LT$cgmath..vector..Vector4$LT$S$GT$$GT$3new17h75f3912caf223a39E"}
!19 = !{!9, !13}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core8coresimd3x863sse10_mm_mul_ps17h2ebcf856faf47894E: argument 0"}
!22 = distinct !{!22, !"_ZN4core8coresimd3x863sse10_mm_mul_ps17h2ebcf856faf47894E"}
