r4 in pair
r5 in integer
freed
r5 in charNode
freed
freed
r4 in Ident
freed
	.data


	.text


	.global main
	main:
		PUSH {lr}
		SUB sp, sp, #8
		LDR r0, =8
		BL malloc
		MOV r4, r0
		LDR r5, =10
		LDR r0, =4
		BL malloc
		STR null, [r0, ]
		STR r0, [r4, ]
		LDR r5, =39
		LDR r0, =1
		BL malloc
		STR null, [r0, ]
		STR r0, [r4, #4]
		STR r4, [sp, #0]
		LDR r4, [sp, #0]
		STR r4, [sp, #4]
		ADD sp, sp, #8
		LDR r0, =0
		POP {pc}

