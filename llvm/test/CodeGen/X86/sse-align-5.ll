; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-- | FileCheck %s

define <2 x i64> @bar(<2 x i64>* %p) nounwind {
; CHECK-LABEL: bar:
; CHECK:       # %bb.0:
; CHECK-NEXT:    movaps (%rdi), %xmm0
; CHECK-NEXT:    retq
  %t = load <2 x i64>, <2 x i64>* %p
  ret <2 x i64> %t
}
