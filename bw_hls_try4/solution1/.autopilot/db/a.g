#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/rcampos/co-diseno/tp-final/soc/bw_hls_try4/solution1/.autopilot/db/a.g.bc ${1+"$@"}
