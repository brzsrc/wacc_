r4 in integer
freed
r4 in integer
r5 in Ident
freed
r5 in Ident
freed
freed
r4 in Ident
r5 in Ident
freed
freed
r4 in integer
freed
r4 in funcCall
freed
r4 in Ident
freed
	.data


	msg_1:
		.word 5
		.ascii "\0"
	msg_0:
		.word 7
		.ascii "%d\0"
	.text


	.global main
		SUB sp, sp, #4
		LDR r4, =0
		STR r4, [sp, #0]
		B backend.instructions.Label@2aaf7cc2
	L1:
		LDR r4, =1
		LDR r5, [sp, #0]
		ADD r5, r5, r4
		LDR r5, [sp, #0]
		STR r4, [r5, ]
	L0:
		LDR r4, [sp, #0]
		LDR r5, [sp, #0]
		CMP r5, r5
		MOV r5, #0
		MOVLT r5, #1
		B backend.instructions.Label@256216b3
		ADD sp, sp, #4
	main:
		PUSH {lr}
		SUB sp, sp, #4
		LDR r4, =10
		STR null, 
		BL f_f
		ADD sp, sp, #4
		MOV r0, r4
		STR r4, [sp, #4]
		LDR r4, [sp, #4]
		MOV r0, r4
		BL p_print_int
		BL p_print_ln
		ADD sp, sp, #4
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

