r4 in pair
freed
freed
freed
r4 in Ident
freed
" = ("
r4 in String
freed
r4 in Ident
freed
r4 in Ident
freed
","
r4 in String
freed
r4 in Ident
freed
r4 in Ident
freed
")"
r4 in String
freed
	.data


	msg_3:
		.word 4
		.ascii ","
	msg_0:
		.word 7
		.ascii "%p\0"
	msg_2:
		.word 9
		.ascii "%.*s\0"
	msg_5:
		.word 5
		.ascii "\0"
	msg_4:
		.word 4
		.ascii ")"
	msg_1:
		.word 7
		.ascii " = ("
	.text


	.global main
	main:
		PUSH {lr}
		SUB sp, sp, #12
		LDR r0, =8
		BL malloc
		MOV r4, r0
		LDR r5, =0
		LDR r0, =4
		BL malloc
		STR null, [r0, ]
		STR r0, [r4, ]
		LDR r5, =0
		LDR r0, =4
		BL malloc
		STR null, [r0, ]
		STR r0, [r4, #4]
		STR r4, [sp, #0]
		LDR r4, [sp, #0]
		MOV r0, r4
		BL p_print_reference
		LDR r4, =L0
		MOV r0, r4
		BL p_print_string
		LDR r4, [sp, #0]
		MOV r0, 
		BL p_check_null_pointer
		LDR null, []
		STR r4, [sp, #4]
		LDR r4, [sp, #4]
		MOV r0, r4
		BL p_print_reference
		LDR r4, =L1
		MOV r0, r4
		BL p_print_string
		LDR r4, [sp, #0]
		MOV r0, 
		BL p_check_null_pointer
		LDR null, [#4]
		STR r4, [sp, #8]
		LDR r4, [sp, #8]
		MOV r0, r4
		BL p_print_reference
		LDR r4, =L2
		MOV r0, r4
		BL p_print_string
		BL p_print_ln
		ADD sp, sp, #12
		LDR r0, =0
		POP {pc}
	p_print_reference:
		PUSH {lr}
		MOV r1, r0
		LDR r0, =msg_0
		ADD r0, r0, #4
		BL printf
		MOV r0, #0
		BL fflush
		POP {pc}
	p_print_string:
		PUSH {lr}
		LDR r1, r0
		ADD r2, r0, #4
		LDR r0, =msg_1
		ADD r0, r0, #4
		BL printf
		MOV r0, #0
		BL fflush
		POP {pc}
	p_print_ln:
		PUSH {lr}
		LDR r0, =msg_2
		ADD r0, r0, #4
		BL puts
		MOV r0, #0
		BL fflush
		POP {pc}

