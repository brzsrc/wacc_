r4 in integer
freed
r4 in integer
freed
r4 in Ident
r5 in Ident
freed
freed
	.data


	msg_0:
		.word 7
		.ascii "%d\0"
	.text


	.global main
	main:
		PUSH {lr}
		SUB sp, sp, #8
		LDR r4, =10
		STR r4, [sp, #0]
		LDR r4, =0
		STR r4, [sp, #4]
		LDR r4, [sp, #4]
		LDR r5, [sp, #0]
		MOV r0, r5
		MOV r1, r5
		BL p_check_divide_by_zero
		BL __aeabi_idivmod
		MOV r1, r5
		MOV r0, r4
		BL p_print_int
		ADD sp, sp, #8
		LDR r0, =0
		POP {pc}
	p_print_int:
		PUSH {lr}
		MOV r1, r0
		LDR r0, =msg_0
		ADD r0, r0, #4
		BL printf
		MOV r0, #0
		BL fflush
		POP {pc}

