include(`commons.m4')f_max:
; S0 - a, S1 - b
	fcmpe	s0, s1
	fcsel	s0, s0, s1, gt
; _EN(`now result in')_RU(`теперь результат в') S0
	ret
