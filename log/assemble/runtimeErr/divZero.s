r4 in integer
r5 in integer
freed
freed
"should not reach here"
r4 in String
freed
	.data


	msg_1:
		.word 9
		.ascii "%.*s\0"
	msg_2:
		.word 5
		.ascii "\0"
	msg_0:
		.word 24
		.ascii "should not reach here"
	.text


	.global main
	main:
		PUSH {lr}
		SUB sp, sp, #4
		LDR r4, =0
		LDR r5, =10
		MOV r0, r5
		MOV r1, r5
		BL p_check_divide_by_zero
		BL __aeabi_idiv
		MOV r0, r5
		STR r4, [sp, #0]
		LDR r4, =L0
		MOV r0, r4
		BL p_print_string
		BL p_print_ln
		ADD sp, sp, #4
		LDR r0, =0
		POP {pc}
	p_print_string:
		PUSH {lr}
		LDR r1, r0
		ADD r2, r0, #4
		LDR r0, =msg_0
		ADD r0, r0, #4
		BL printf
		MOV r0, #0
		BL fflush
		POP {pc}
	p_print_ln:
		PUSH {lr}
		LDR r0, =msg_1
		ADD r0, r0, #4
		BL puts
		MOV r0, #0
		BL fflush
		POP {pc}

