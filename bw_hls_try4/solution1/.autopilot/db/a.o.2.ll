; ModuleID = '/home/rcampos/co-diseno/tp-final/soc/bw_hls_try4/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=12 type=[1 x i8]*]
@rgb_to_bw.str = internal unnamed_addr constant [10 x i8] c"rgb_to_bw\00" ; [#uses=1 type=[10 x i8]*]

; [#uses=0]
define zeroext i8 @rgb_to_bw(i8 zeroext %red, i8 zeroext %green, i8 zeroext %blue) nounwind uwtable readnone {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %red) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %green) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %blue) nounwind, !map !22
  call void (...)* @_ssdm_op_SpecBitsMap(i8 0) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @rgb_to_bw.str) nounwind
  call void @llvm.dbg.value(metadata !{i8 %red}, i64 0, metadata !32), !dbg !33 ; [debug line = 2:21] [debug variable = red]
  call void @llvm.dbg.value(metadata !{i8 %green}, i64 0, metadata !34), !dbg !35 ; [debug line = 3:21] [debug variable = green]
  call void @llvm.dbg.value(metadata !{i8 %blue}, i64 0, metadata !36), !dbg !37 ; [debug line = 4:21] [debug variable = blue]
  %tmp.cast = zext i8 %blue to i9, !dbg !38       ; [#uses=1 type=i9] [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %blue, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !38 ; [debug line = 7:1]
  %tmp.1.cast = zext i8 %green to i10, !dbg !38   ; [#uses=1 type=i10] [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %green, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !38 ; [debug line = 7:1]
  %tmp.2.cast = zext i8 %red to i9, !dbg !38      ; [#uses=1 type=i9] [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %red, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !38 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !38 ; [debug line = 7:1]
  %tmp1 = add i9 %tmp.cast, %tmp.2.cast, !dbg !38 ; [#uses=1 type=i9] [debug line = 7:1]
  %tmp1.cast = zext i9 %tmp1 to i10, !dbg !38     ; [#uses=1 type=i10] [debug line = 7:1]
  %tmp.4 = add i10 %tmp.1.cast, %tmp1.cast, !dbg !38 ; [#uses=1 type=i10] [debug line = 7:1]
  %tmp.5 = udiv i10 %tmp.4, 3, !dbg !38           ; [#uses=1 type=i10] [debug line = 7:1]
  %tmp.6 = trunc i10 %tmp.5 to i8, !dbg !38       ; [#uses=1 type=i8] [debug line = 7:1]
  ret i8 %tmp.6, !dbg !38                         ; [debug line = 7:1]
}

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/rcampos/co-diseno/tp-final/soc/bw_hls_try4/solution1/.autopilot/db/rgb_to_bw.pragma.2.cpp", metadata !"/home/rcampos/co-diseno/tp-final/soc", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rgb_to_bw", metadata !"rgb_to_bw", metadata !"_Z9rgb_to_bwhhh", metadata !6, i32 1, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8, i8, i8)* @rgb_to_bw, null, null, metadata !10, i32 6} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"labo6_files/rgb_to_bw.cpp", metadata !"/home/rcampos/co-diseno/tp-final/soc", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 7, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"red", metadata !16, metadata !"unsigned char", i32 0, i32 7}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 0, i32 0}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 7, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"green", metadata !16, metadata !"unsigned char", i32 0, i32 7}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 7, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"blue", metadata !16, metadata !"unsigned char", i32 0, i32 7}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 7, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"return", metadata !30, metadata !"unsigned char", i32 0, i32 7}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 1, i32 0}
!32 = metadata !{i32 786689, metadata !5, metadata !"red", metadata !6, i32 16777218, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 2, i32 21, metadata !5, null}
!34 = metadata !{i32 786689, metadata !5, metadata !"green", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 3, i32 21, metadata !5, null}
!36 = metadata !{i32 786689, metadata !5, metadata !"blue", metadata !6, i32 50331652, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 4, i32 21, metadata !5, null}
!38 = metadata !{i32 7, i32 1, metadata !39, null}
!39 = metadata !{i32 786443, metadata !5, i32 6, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
