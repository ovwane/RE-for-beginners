include(`commons.m4')f_signed:
; W0=a, W1=b
	cmp	w0, w1
	bgt	.L19	; Branch if Greater Than _RU(``(переход, если больше чем)'')(a>b)
	beq	.L20	; Branch if Equal _RU(``(переход, если равно)'')(a==b)
	bge	.L15	; Branch if Greater than or Equal _RU(``(переход, если больше или равно)'')(a>=b) (_EN(`impossible here')_RU(`здесь это невозможно'))
	; a<b
	adrp	x0, .LC11	; "a<b"
	add	x0, x0, :lo12:.LC11
	b	puts
.L19:
	adrp	x0, .LC9	; "a>b"
	add	x0, x0, :lo12:.LC9
	b	puts
.L15:	; _EN(`impossible here')_RU(`здесь это невозможно')
	ret
.L20:
	adrp	x0, .LC10	; "a==b"
	add	x0, x0, :lo12:.LC10
	b	puts
