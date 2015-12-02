; ModuleID = '/home/rcampos/co-diseno/tp-final/soc/bw_hls_try4/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=12 type=[1 x i8]*]
@rgb_to_bw_str = internal unnamed_addr constant [10 x i8] c"rgb_to_bw\00" ; [#uses=1 type=[10 x i8]*]

; [#uses=0]
define zeroext i8 @rgb_to_bw(i8 zeroext %red, i8 zeroext %green, i8 zeroext %blue) nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %red) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %green) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %blue) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(i8 0) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @rgb_to_bw_str) nounwind
  %blue_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %blue) nounwind ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %blue_read}, i64 0, metadata !20), !dbg !28 ; [debug line = 4:21] [debug variable = blue]
  %green_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %green) nounwind ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %green_read}, i64 0, metadata !29), !dbg !30 ; [debug line = 3:21] [debug variable = green]
  %red_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %red) nounwind ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %red_read}, i64 0, metadata !31), !dbg !32 ; [debug line = 2:21] [debug variable = red]
  call void @llvm.dbg.value(metadata !{i8 %red}, i64 0, metadata !31), !dbg !32 ; [debug line = 2:21] [debug variable = red]
  call void @llvm.dbg.value(metadata !{i8 %green}, i64 0, metadata !29), !dbg !30 ; [debug line = 3:21] [debug variable = green]
  call void @llvm.dbg.value(metadata !{i8 %blue}, i64 0, metadata !20), !dbg !28 ; [debug line = 4:21] [debug variable = blue]
  %tmp_cast = zext i8 %blue_read to i9, !dbg !33  ; [#uses=1 type=i9] [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %blue, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !33 ; [debug line = 7:1]
  %tmp_1_cast = zext i8 %green_read to i10, !dbg !33 ; [#uses=1 type=i10] [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %green, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !33 ; [debug line = 7:1]
  %tmp_2_cast = zext i8 %red_read to i9, !dbg !33 ; [#uses=1 type=i9] [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %red, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !33 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !33 ; [debug line = 7:1]
  %tmp1 = add i9 %tmp_2_cast, %tmp_cast, !dbg !33 ; [#uses=1 type=i9] [debug line = 7:1]
  %tmp1_cast = zext i9 %tmp1 to i10, !dbg !33     ; [#uses=1 type=i10] [debug line = 7:1]
  %tmp_4 = add i10 %tmp1_cast, %tmp_1_cast, !dbg !33 ; [#uses=1 type=i10] [debug line = 7:1]
  %zext_cast = zext i10 %tmp_4 to i22, !dbg !33   ; [#uses=1 type=i22] [debug line = 7:1]
  %mul = mul i22 %zext_cast, 1366, !dbg !33       ; [#uses=1 type=i22] [debug line = 7:1]
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i22.i32.i32(i22 %mul, i32 12, i32 19), !dbg !33 ; [#uses=1 type=i8] [debug line = 7:1]
  ret i8 %tmp_6, !dbg !33                         ; [debug line = 7:1]
}

; [#uses=4]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=1]
define weak i8 @_ssdm_op_PartSelect.i8.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2) ; [#uses=1 type=i22]
  %empty_4 = trunc i22 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_4
}

; [#uses=1]
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
!20 = metadata !{i32 786689, metadata !21, metadata !"blue", metadata !22, i32 50331652, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 786478, i32 0, metadata !22, metadata !"rgb_to_bw", metadata !"rgb_to_bw", metadata !"_Z9rgb_to_bwhhh", metadata !22, i32 1, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8, i8, i8)* @rgb_to_bw, null, null, metadata !26, i32 6} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786473, metadata !"labo6_files/rgb_to_bw.cpp", metadata !"/home/rcampos/co-diseno/tp-final/soc", null} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{metadata !25, metadata !25, metadata !25, metadata !25}
!25 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!28 = metadata !{i32 4, i32 21, metadata !21, null}
!29 = metadata !{i32 786689, metadata !21, metadata !"green", metadata !22, i32 33554435, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 3, i32 21, metadata !21, null}
!31 = metadata !{i32 786689, metadata !21, metadata !"red", metadata !22, i32 16777218, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 2, i32 21, metadata !21, null}
!33 = metadata !{i32 7, i32 1, metadata !34, null}
!34 = metadata !{i32 786443, metadata !21, i32 6, i32 1, metadata !22, i32 0} ; [ DW_TAG_lexical_block ]
