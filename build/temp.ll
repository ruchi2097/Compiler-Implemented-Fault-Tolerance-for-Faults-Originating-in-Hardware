; ModuleID = 'adpcm-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.adpcm_state = type { i16, i8 }

; Function: adpcm_coder
define void @adpcm_coder(i16* %0, i8* %1, i32 %2, %struct.adpcm_state* %3) {
  ; Load an i16 value from the pointer %0
  %5 = load i16, i16* %0, align 2

  ; Get the address of an element within the struct %3
  %6 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %3, i32 0, i32 1

  ; Load an i8 value from the address %6
  %7 = load i8, i8* %6, align 2

  ; Perform a signed greater-than comparison on the i32 value %2
  %8 = icmp sgt i32 %2, 0


  ; End of function body
  ret void
}

