; ModuleID = '/home/rcampos/co-diseno/labo6_try2/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@mul.str = internal unnamed_addr constant [4 x i8] c"mul\00" ; [#uses=1 type=[4 x i8]*]

; [#uses=0]
define signext i16 @mul(i8 signext %a, i8 signext %b) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i16 0) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @mul.str) nounwind
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !19), !dbg !20 ; [debug line = 2:12] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !21), !dbg !22 ; [debug line = 3:12] [debug variable = b]
  %tmp = sext i8 %b to i32, !dbg !23              ; [#uses=1 type=i32] [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !23 ; [debug line = 7:1]
  %tmp.1 = sext i8 %a to i32, !dbg !23            ; [#uses=1 type=i32] [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp.1, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !23 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !23 ; [debug line = 7:1]
  %tmp.2 = sext i8 %a to i16, !dbg !25            ; [#uses=1 type=i16] [debug line = 9:1]
  %tmp.3 = sext i8 %b to i16, !dbg !25            ; [#uses=1 type=i16] [debug line = 9:1]
  %prod = mul i16 %tmp.3, %tmp.2, !dbg !25        ; [#uses=1 type=i16] [debug line = 9:1]
  call void @llvm.dbg.value(metadata !{i16 %prod}, i64 0, metadata !26), !dbg !25 ; [debug line = 9:1] [debug variable = prod]
  ret i16 %prod, !dbg !27                         ; [debug line = 11:1]
}

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/rcampos/co-diseno/labo6_try2/solution1/.autopilot/db/mul.pragma.2.cpp", metadata !"/home/rcampos/co-diseno", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mul", metadata !"mul", metadata !"_Z3mulcc", metadata !6, i32 1, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i16 (i8, i8)* @mul, null, null, metadata !11, i32 6} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"labo6_files/mul.cpp", metadata !"/home/rcampos/co-diseno", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 15, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"return", metadata !17, metadata !"short", i32 0, i32 15}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 1, i32 0}
!19 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777218, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 2, i32 12, metadata !5, null}
!21 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 33554435, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 3, i32 12, metadata !5, null}
!23 = metadata !{i32 7, i32 1, metadata !24, null}
!24 = metadata !{i32 786443, metadata !5, i32 6, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 9, i32 1, metadata !24, null}
!26 = metadata !{i32 786688, metadata !24, metadata !"prod", metadata !6, i32 8, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!27 = metadata !{i32 11, i32 1, metadata !24, null}
