r4 in integer
r5 in integer
freed
freed
	.data


	msg_0:
		.word 7
		.ascii "%d\0"
	msg_1:
		.word 5
		.ascii "\0"
	.text


	.global main
	main:
		PUSH {lr}
		LDR r4, =2
		LDR r5, =1
		SUB r5, r5, r4
		MOV r0, r4
		BL p_print_int
		BL p_print_ln
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
	p_print_ln:
		PUSH {lr}
		LDR r0, =msg_1
		ADD r0, r0, #4
		BL puts
		MOV r0, #0
		BL fflush
		POP {pc}

