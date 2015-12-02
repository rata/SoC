; ModuleID = '/home/rcampos/co-diseno/tp-final/soc/bw_hls_try4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rgb_to_bw_str = internal unnamed_addr constant [10 x i8] c"rgb_to_bw\00"

define zeroext i8 @rgb_to_bw(i8 zeroext %red, i8 zeroext %green, i8 zeroext %blue) nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %red) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %green) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %blue) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(i8 0) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @rgb_to_bw_str) nounwind
  %blue_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %blue) nounwind
  %green_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %green) nounwind
  %red_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %red) nounwind
  %tmp_cast = zext i8 %blue_read to i9
  call void (...)* @_ssdm_op_SpecInterface(i8 %blue, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp_1_cast = zext i8 %green_read to i10
  call void (...)* @_ssdm_op_SpecInterface(i8 %green, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp_2_cast = zext i8 %red_read to i9
  call void (...)* @_ssdm_op_SpecInterface(i8 %red, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp1 = add i9 %tmp_2_cast, %tmp_cast
  %tmp1_cast = zext i9 %tmp1 to i10
  %tmp_4 = add i10 %tmp1_cast, %tmp_1_cast
  %zext_cast = zext i10 %tmp_4 to i22
  %mul = mul i22 %zext_cast, 1366
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i22.i32.i32(i22 %mul, i32 12, i32 19)
  ret i8 %tmp_6
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_4 = trunc i22 %empty to i8
  ret i8 %empty_4
}

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 7, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"red", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 7, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"green", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 7, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"blue", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 7, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"return", metadata !18, metadata !"unsigned char", i32 0, i32 7}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 1, i32 0}
