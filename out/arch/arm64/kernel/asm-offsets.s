	.arch armv8.2-a+crypto+crc+fp16+rcpc+dotprod
	.file	"asm-offsets.c"
// GNU C89 (Eva GCC) version 12.0.1 20220224 (Bleeding Edge) (aarch64-elf)
//	compiled by GNU C version 9.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mgeneral-regs-only -mpc-relative-literal-loads -mabi=lp64 -mcpu=cortex-a76.cortex-a55+crypto -g -O2 -std=gnu90 -fno-strict-aliasing -fno-common -fshort-wchar -fno-asynchronous-unwind-tables -fno-pic -fno-delete-null-pointer-checks -fno-allow-store-data-races -fstack-protector-strong -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fstack-check=no
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/workspace/v2/out" "../arch/arm64/kernel/asm-offsets.c"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 5,,15
	.global	main
	.type	main, %function
main:
.LFB3284:
	.file 1 "../arch/arm64/kernel/asm-offsets.c"
	.loc 1 37 1 view -0
	.cfi_startproc
	.loc 1 38 3 view .LVU1
	// Start of user assembly
// 38 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_ACTIVE_MM 1472 offsetof(struct task_struct, active_mm)"	//
// 0 "" 2
	.loc 1 39 3 view .LVU2
// 39 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 40 3 view .LVU3
// 40 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_FLAGS 0 offsetof(struct task_struct, thread_info.flags)"	//
// 0 "" 2
	.loc 1 41 3 view .LVU4
// 41 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_PREEMPT 72 offsetof(struct task_struct, thread_info.preempt_count)"	//
// 0 "" 2
	.loc 1 42 3 view .LVU5
// 42 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_TI_ADDR_LIMIT 64 offsetof(struct task_struct, thread_info.addr_limit)"	//
// 0 "" 2
	.loc 1 49 3 view .LVU6
// 49 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSK_STACK 88 offsetof(struct task_struct, stack)"	//
// 0 "" 2
	.loc 1 50 3 view .LVU7
// 50 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 51 3 view .LVU8
// 51 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->THREAD_CPU_CONTEXT 2832 offsetof(struct task_struct, thread.cpu_context)"	//
// 0 "" 2
	.loc 1 52 3 view .LVU9
// 52 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 53 3 view .LVU10
// 53 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X0 0 offsetof(struct pt_regs, regs[0])"	//
// 0 "" 2
	.loc 1 54 3 view .LVU11
// 54 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X1 8 offsetof(struct pt_regs, regs[1])"	//
// 0 "" 2
	.loc 1 55 3 view .LVU12
// 55 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X2 16 offsetof(struct pt_regs, regs[2])"	//
// 0 "" 2
	.loc 1 56 3 view .LVU13
// 56 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X3 24 offsetof(struct pt_regs, regs[3])"	//
// 0 "" 2
	.loc 1 57 3 view .LVU14
// 57 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X4 32 offsetof(struct pt_regs, regs[4])"	//
// 0 "" 2
	.loc 1 58 3 view .LVU15
// 58 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X5 40 offsetof(struct pt_regs, regs[5])"	//
// 0 "" 2
	.loc 1 59 3 view .LVU16
// 59 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X6 48 offsetof(struct pt_regs, regs[6])"	//
// 0 "" 2
	.loc 1 60 3 view .LVU17
// 60 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X7 56 offsetof(struct pt_regs, regs[7])"	//
// 0 "" 2
	.loc 1 61 3 view .LVU18
// 61 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X8 64 offsetof(struct pt_regs, regs[8])"	//
// 0 "" 2
	.loc 1 62 3 view .LVU19
// 62 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X10 80 offsetof(struct pt_regs, regs[10])"	//
// 0 "" 2
	.loc 1 63 3 view .LVU20
// 63 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X12 96 offsetof(struct pt_regs, regs[12])"	//
// 0 "" 2
	.loc 1 64 3 view .LVU21
// 64 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X14 112 offsetof(struct pt_regs, regs[14])"	//
// 0 "" 2
	.loc 1 65 3 view .LVU22
// 65 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X16 128 offsetof(struct pt_regs, regs[16])"	//
// 0 "" 2
	.loc 1 66 3 view .LVU23
// 66 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X18 144 offsetof(struct pt_regs, regs[18])"	//
// 0 "" 2
	.loc 1 67 3 view .LVU24
// 67 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X20 160 offsetof(struct pt_regs, regs[20])"	//
// 0 "" 2
	.loc 1 68 3 view .LVU25
// 68 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X22 176 offsetof(struct pt_regs, regs[22])"	//
// 0 "" 2
	.loc 1 69 3 view .LVU26
// 69 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X24 192 offsetof(struct pt_regs, regs[24])"	//
// 0 "" 2
	.loc 1 70 3 view .LVU27
// 70 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X26 208 offsetof(struct pt_regs, regs[26])"	//
// 0 "" 2
	.loc 1 71 3 view .LVU28
// 71 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_X28 224 offsetof(struct pt_regs, regs[28])"	//
// 0 "" 2
	.loc 1 72 3 view .LVU29
// 72 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_LR 240 offsetof(struct pt_regs, regs[30])"	//
// 0 "" 2
	.loc 1 73 3 view .LVU30
// 73 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_SP 248 offsetof(struct pt_regs, sp)"	//
// 0 "" 2
	.loc 1 75 3 view .LVU31
// 75 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_COMPAT_SP 104 offsetof(struct pt_regs, compat_sp)"	//
// 0 "" 2
	.loc 1 77 3 view .LVU32
// 77 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_PSTATE 264 offsetof(struct pt_regs, pstate)"	//
// 0 "" 2
	.loc 1 78 3 view .LVU33
// 78 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_PC 256 offsetof(struct pt_regs, pc)"	//
// 0 "" 2
	.loc 1 79 3 view .LVU34
// 79 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_ORIG_X0 272 offsetof(struct pt_regs, orig_x0)"	//
// 0 "" 2
	.loc 1 80 3 view .LVU35
// 80 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_SYSCALLNO 280 offsetof(struct pt_regs, syscallno)"	//
// 0 "" 2
	.loc 1 81 3 view .LVU36
// 81 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_ORIG_ADDR_LIMIT 288 offsetof(struct pt_regs, orig_addr_limit)"	//
// 0 "" 2
	.loc 1 82 3 view .LVU37
// 82 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_STACKFRAME 304 offsetof(struct pt_regs, stackframe)"	//
// 0 "" 2
	.loc 1 83 3 view .LVU38
// 83 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->S_FRAME_SIZE 320 sizeof(struct pt_regs)"	//
// 0 "" 2
	.loc 1 84 3 view .LVU39
// 84 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 85 3 view .LVU40
// 85 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->MM_CONTEXT_ID 752 offsetof(struct mm_struct, context.id.counter)"	//
// 0 "" 2
	.loc 1 86 3 view .LVU41
// 86 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 87 3 view .LVU42
// 87 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VMA_VM_MM 64 offsetof(struct vm_area_struct, vm_mm)"	//
// 0 "" 2
	.loc 1 88 3 view .LVU43
// 88 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VMA_VM_FLAGS 80 offsetof(struct vm_area_struct, vm_flags)"	//
// 0 "" 2
	.loc 1 89 3 view .LVU44
// 89 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 90 3 view .LVU45
// 90 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VM_EXEC 4 VM_EXEC"	//
// 0 "" 2
	.loc 1 91 3 view .LVU46
// 91 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 92 3 view .LVU47
// 92 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->PAGE_SZ 4096 PAGE_SIZE"	//
// 0 "" 2
	.loc 1 93 3 view .LVU48
// 93 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 94 3 view .LVU49
// 94 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->DMA_BIDIRECTIONAL 0 DMA_BIDIRECTIONAL"	//
// 0 "" 2
	.loc 1 95 3 view .LVU50
// 95 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->DMA_TO_DEVICE 1 DMA_TO_DEVICE"	//
// 0 "" 2
	.loc 1 96 3 view .LVU51
// 96 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->DMA_FROM_DEVICE 2 DMA_FROM_DEVICE"	//
// 0 "" 2
	.loc 1 97 3 view .LVU52
// 97 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 98 3 view .LVU53
// 98 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_REALTIME 0 CLOCK_REALTIME"	//
// 0 "" 2
	.loc 1 99 3 view .LVU54
// 99 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_MONOTONIC 1 CLOCK_MONOTONIC"	//
// 0 "" 2
	.loc 1 100 3 view .LVU55
// 100 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_MONOTONIC_RAW 4 CLOCK_MONOTONIC_RAW"	//
// 0 "" 2
	.loc 1 101 3 view .LVU56
// 101 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_REALTIME_RES 100 offsetof(struct vdso_data, hrtimer_res)"	//
// 0 "" 2
	.loc 1 102 3 view .LVU57
// 102 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_REALTIME_COARSE 5 CLOCK_REALTIME_COARSE"	//
// 0 "" 2
	.loc 1 103 3 view .LVU58
// 103 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_MONOTONIC_COARSE 6 CLOCK_MONOTONIC_COARSE"	//
// 0 "" 2
	.loc 1 104 3 view .LVU59
// 104 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CLOCK_COARSE_RES 10000000 LOW_RES_NSEC"	//
// 0 "" 2
	.loc 1 105 3 view .LVU60
// 105 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->NSEC_PER_SEC 1000000000 NSEC_PER_SEC"	//
// 0 "" 2
	.loc 1 106 3 view .LVU61
// 106 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 107 3 view .LVU62
// 107 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_CS_CYCLE_LAST 0 offsetof(struct vdso_data, cs_cycle_last)"	//
// 0 "" 2
	.loc 1 108 3 view .LVU63
// 108 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_RAW_TIME_SEC 8 offsetof(struct vdso_data, raw_time_sec)"	//
// 0 "" 2
	.loc 1 109 3 view .LVU64
// 109 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_RAW_TIME_NSEC 16 offsetof(struct vdso_data, raw_time_nsec)"	//
// 0 "" 2
	.loc 1 110 3 view .LVU65
// 110 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_XTIME_CLK_SEC 24 offsetof(struct vdso_data, xtime_clock_sec)"	//
// 0 "" 2
	.loc 1 111 3 view .LVU66
// 111 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_XTIME_CLK_NSEC 32 offsetof(struct vdso_data, xtime_clock_nsec)"	//
// 0 "" 2
	.loc 1 112 3 view .LVU67
// 112 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_XTIME_CRS_SEC 40 offsetof(struct vdso_data, xtime_coarse_sec)"	//
// 0 "" 2
	.loc 1 113 3 view .LVU68
// 113 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_XTIME_CRS_NSEC 48 offsetof(struct vdso_data, xtime_coarse_nsec)"	//
// 0 "" 2
	.loc 1 114 3 view .LVU69
// 114 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_WTM_CLK_SEC 56 offsetof(struct vdso_data, wtm_clock_sec)"	//
// 0 "" 2
	.loc 1 115 3 view .LVU70
// 115 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_WTM_CLK_NSEC 64 offsetof(struct vdso_data, wtm_clock_nsec)"	//
// 0 "" 2
	.loc 1 116 3 view .LVU71
// 116 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_TB_SEQ_COUNT 72 offsetof(struct vdso_data, tb_seq_count)"	//
// 0 "" 2
	.loc 1 117 3 view .LVU72
// 117 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_CS_MONO_MULT 76 offsetof(struct vdso_data, cs_mono_mult)"	//
// 0 "" 2
	.loc 1 118 3 view .LVU73
// 118 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_CS_RAW_MULT 84 offsetof(struct vdso_data, cs_raw_mult)"	//
// 0 "" 2
	.loc 1 119 3 view .LVU74
// 119 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_CS_SHIFT 80 offsetof(struct vdso_data, cs_shift)"	//
// 0 "" 2
	.loc 1 120 3 view .LVU75
// 120 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_TZ_MINWEST 88 offsetof(struct vdso_data, tz_minuteswest)"	//
// 0 "" 2
	.loc 1 121 3 view .LVU76
// 121 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_TZ_DSTTIME 92 offsetof(struct vdso_data, tz_dsttime)"	//
// 0 "" 2
	.loc 1 122 3 view .LVU77
// 122 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->VDSO_USE_SYSCALL 96 offsetof(struct vdso_data, use_syscall)"	//
// 0 "" 2
	.loc 1 123 3 view .LVU78
// 123 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 124 3 view .LVU79
// 124 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TVAL_TV_SEC 0 offsetof(struct timeval, tv_sec)"	//
// 0 "" 2
	.loc 1 125 3 view .LVU80
// 125 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TVAL_TV_USEC 8 offsetof(struct timeval, tv_usec)"	//
// 0 "" 2
	.loc 1 126 3 view .LVU81
// 126 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSPEC_TV_SEC 0 offsetof(struct timespec, tv_sec)"	//
// 0 "" 2
	.loc 1 127 3 view .LVU82
// 127 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TSPEC_TV_NSEC 8 offsetof(struct timespec, tv_nsec)"	//
// 0 "" 2
	.loc 1 128 3 view .LVU83
// 128 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 129 3 view .LVU84
// 129 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TZ_MINWEST 0 offsetof(struct timezone, tz_minuteswest)"	//
// 0 "" 2
	.loc 1 130 3 view .LVU85
// 130 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->TZ_DSTTIME 4 offsetof(struct timezone, tz_dsttime)"	//
// 0 "" 2
	.loc 1 131 3 view .LVU86
// 131 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 132 3 view .LVU87
// 132 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_BOOT_STACK 0 offsetof(struct secondary_data, stack)"	//
// 0 "" 2
	.loc 1 133 3 view .LVU88
// 133 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_BOOT_TASK 8 offsetof(struct secondary_data, task)"	//
// 0 "" 2
	.loc 1 134 3 view .LVU89
// 134 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 146 3 view .LVU90
// 146 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_SUSPEND_SZ 112 sizeof(struct cpu_suspend_ctx)"	//
// 0 "" 2
	.loc 1 147 3 view .LVU91
// 147 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->CPU_CTX_SP 104 offsetof(struct cpu_suspend_ctx, sp)"	//
// 0 "" 2
	.loc 1 148 3 view .LVU92
// 148 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->MPIDR_HASH_MASK 0 offsetof(struct mpidr_hash, mask)"	//
// 0 "" 2
	.loc 1 149 3 view .LVU93
// 149 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->MPIDR_HASH_SHIFTS 8 offsetof(struct mpidr_hash, shift_aff)"	//
// 0 "" 2
	.loc 1 150 3 view .LVU94
// 150 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->SLEEP_STACK_DATA_SYSTEM_REGS 0 offsetof(struct sleep_stack_data, system_regs)"	//
// 0 "" 2
	.loc 1 151 3 view .LVU95
// 151 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->SLEEP_STACK_DATA_CALLEE_REGS 112 offsetof(struct sleep_stack_data, callee_saved_regs)"	//
// 0 "" 2
	.loc 1 153 3 view .LVU96
// 153 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM_SMCCC_RES_X0_OFFS 0 offsetof(struct arm_smccc_res, a0)"	//
// 0 "" 2
	.loc 1 154 3 view .LVU97
// 154 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM_SMCCC_RES_X2_OFFS 16 offsetof(struct arm_smccc_res, a2)"	//
// 0 "" 2
	.loc 1 155 3 view .LVU98
// 155 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM_SMCCC_QUIRK_ID_OFFS 0 offsetof(struct arm_smccc_quirk, id)"	//
// 0 "" 2
	.loc 1 156 3 view .LVU99
// 156 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM_SMCCC_QUIRK_STATE_OFFS 8 offsetof(struct arm_smccc_quirk, state)"	//
// 0 "" 2
	.loc 1 157 3 view .LVU100
// 157 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 158 3 view .LVU101
// 158 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->HIBERN_PBE_ORIG 8 offsetof(struct pbe, orig_address)"	//
// 0 "" 2
	.loc 1 159 3 view .LVU102
// 159 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->HIBERN_PBE_ADDR 0 offsetof(struct pbe, address)"	//
// 0 "" 2
	.loc 1 160 3 view .LVU103
// 160 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->HIBERN_PBE_NEXT 16 offsetof(struct pbe, next)"	//
// 0 "" 2
	.loc 1 161 3 view .LVU104
// 161 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->ARM64_FTR_SYSVAL 24 offsetof(struct arm64_ftr_reg, sys_val)"	//
// 0 "" 2
	.loc 1 162 3 view .LVU105
// 162 "../arch/arm64/kernel/asm-offsets.c" 1
	
.ascii "->"
// 0 "" 2
	.loc 1 166 3 view .LVU106
// ../arch/arm64/kernel/asm-offsets.c:167: }
	.loc 1 167 1 is_stmt 0 view .LVU107
	// End of user assembly
	mov	w0, 0	//,
	ret	
	.cfi_endproc
.LFE3284:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "../arch/arm64/include/asm/stack_pointer.h"
	.file 3 "../include/linux/fs.h"
	.file 4 "../include/linux/dma-direction.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10b
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x1
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.8byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x8
	.4byte	0x43
	.uleb128 0x3
	.4byte	0x31
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	0x3c
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x1
	.byte	0x1
	.byte	0x2
	.4byte	.LASF12
	.uleb128 0x1
	.byte	0x10
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x2
	.byte	0x8
	.byte	0x18
	.4byte	0x2a
	.uleb128 0x1
	.byte	0x6f
	.uleb128 0x8
	.4byte	0x37
	.4byte	0xb3
	.uleb128 0x9
	.4byte	0x2a
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.4byte	0xa3
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x3
	.2byte	0xb3b
	.byte	0x1b
	.4byte	0xb3
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x7
	.byte	0x4
	.4byte	0x48
	.byte	0x4
	.byte	0x8
	.byte	0x6
	.4byte	0xf0
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.4byte	0x6b
	.8byte	.LFB3284
	.8byte	.LFE3284-.LFB3284
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.LFB3284
	.8byte	.LFE3284-.LFB3284
	.8byte	0
	.8byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x8
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x7
	.8byte	.LFB3284
	.uleb128 .LFE3284-.LFB3284
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"dma_data_direction"
.LASF4:
	.string	"unsigned int"
.LASF19:
	.string	"current_stack_pointer"
.LASF16:
	.string	"DMA_FROM_DEVICE"
.LASF14:
	.string	"DMA_BIDIRECTIONAL"
.LASF2:
	.string	"long unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF15:
	.string	"DMA_TO_DEVICE"
.LASF20:
	.string	"kernel_read_file_str"
.LASF6:
	.string	"unsigned char"
.LASF22:
	.string	"main"
.LASF17:
	.string	"DMA_NONE"
.LASF11:
	.string	"long int"
.LASF18:
	.ascii	"GNU C89 12.0.1 20220224 (Bleeding Edge) -mlittle-endian -mge"
	.ascii	"neral-regs-only -mpc-relative-literal-loads -mabi=lp64 -mcpu"
	.ascii	"=cortex-a76.cortex-a55+crypto -g -O2 -std=gnu90 -fno-strict-"
	.ascii	"aliasing -fno-common -fshort-wchar -fno-asynchronous-unwind-"
	.ascii	"tables "
	.string	"-fno-pic -fno-delete-null-pointer-checks -fno-allow-store-data-races -fstack-protector-strong -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fstack-check=no"
.LASF12:
	.string	"_Bool"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"short unsigned int"
.LASF5:
	.string	"signed char"
.LASF7:
	.string	"short int"
.LASF13:
	.string	"__int128 unsigned"
.LASF3:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/workspace/v2/out"
.LASF0:
	.string	"../arch/arm64/kernel/asm-offsets.c"
	.ident	"GCC: (Eva GCC) 12.0.1 20220224 (Bleeding Edge)"
