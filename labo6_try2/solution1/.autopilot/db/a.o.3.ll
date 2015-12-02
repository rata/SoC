; ModuleID = '/home/rcampos/co-diseno/labo6_try2/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=3 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=9 type=[1 x i8]*]
@mul_str = internal unnamed_addr constant [4 x i8] c"mul\00" ; [#uses=1 type=[4 x i8]*]

; [#uses=0]
define signext i16 @mul(i8 signext %a, i8 signext %b) nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %a) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %b) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @mul_str) nounwind
  %b_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %b) nounwind ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_read}, i64 0, metadata !16), !dbg !25 ; [debug line = 3:12] [debug variable = b]
  %a_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %a) nounwind ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %a_read}, i64 0, metadata !26), !dbg !27 ; [debug line = 2:12] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !26), !dbg !27 ; [debug line = 2:12] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !16), !dbg !25 ; [debug line = 3:12] [debug variable = b]
  call void (...)* @_ssdm_op_SpecInterface(i8 %b, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !28 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %a, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !28 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !28 ; [debug line = 7:1]
  %tmp_2 = sext i8 %a_read to i16, !dbg !30       ; [#uses=1 type=i16] [debug line = 9:1]
  %tmp_3 = sext i8 %b_read to i16, !dbg !30       ; [#uses=1 type=i16] [debug line = 9:1]
  %prod = mul i16 %tmp_3, %tmp_2, !dbg !30        ; [#uses=1 type=i16] [debug line = 9:1]
  call void @llvm.dbg.value(metadata !{i16 %prod}, i64 0, metadata !31), !dbg !30 ; [debug line = 9:1] [debug variable = prod]
  ret i16 %prod, !dbg !32                         ; [debug line = 11:1]
}

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 7, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"a", metadata !4, metadata !"char", i32 0, i32 7}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 7, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"b", metadata !4, metadata !"char", i32 0, i32 7}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 15, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"return", metadata !14, metadata !"short", i32 0, i32 15}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 1, i32 0}
!16 = metadata !{i32 786689, metadata !17, metadata !"b", metadata !18, i32 33554435, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 786478, i32 0, metadata !18, metadata !"mul", metadata !"mul", metadata !"_Z3mulcc", metadata !18, i32 1, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i8, i8)* @mul, null, null, metadata !23, i32 6} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786473, metadata !"labo6_files/mul.cpp", metadata !"/home/rcampos/co-diseno", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{metadata !21, metadata !22, metadata !22}
!21 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!25 = metadata !{i32 3, i32 12, metadata !17, null}
!26 = metadata !{i32 786689, metadata !17, metadata !"a", metadata !18, i32 16777218, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 2, i32 12, metadata !17, null}
!28 = metadata !{i32 7, i32 1, metadata !29, null}
!29 = metadata !{i32 786443, metadata !17, i32 6, i32 1, metadata !18, i32 0} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 9, i32 1, metadata !29, null}
!31 = metadata !{i32 786688, metadata !29, metadata !"prod", metadata !18, i32 8, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!32 = metadata !{i32 11, i32 1, metadata !29, null}
