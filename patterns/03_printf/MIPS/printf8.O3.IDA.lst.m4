include(`commons.m4').text:00000000 main:
.text:00000000
.text:00000000 var_28          = -0x28
.text:00000000 var_24          = -0x24
.text:00000000 var_20          = -0x20
.text:00000000 var_1C          = -0x1C
.text:00000000 var_18          = -0x18
.text:00000000 var_10          = -0x10
.text:00000000 var_4           = -4
.text:00000000
; _EN(`function prologue')_RU(`пролог функции'):
.text:00000000                 lui     $gp, (__gnu_local_gp >> 16)
.text:00000004                 addiu   $sp, -0x38
.text:00000008                 la      $gp, (__gnu_local_gp & 0xFFFF)
.text:0000000C                 sw      $ra, 0x38+var_4($sp)
.text:00000010                 sw      $gp, 0x38+var_10($sp)
; _EN(`pass 5th argument in stack')_RU(`передать 5-й аргумент в стеке'):
.text:00000014                 li      $v0, 4
.text:00000018                 sw      $v0, 0x38+var_28($sp)
; _EN(`pass 6th argument in stack')_RU(`передать 6-й аргумент в стеке'):
.text:0000001C                 li      $v0, 5
.text:00000020                 sw      $v0, 0x38+var_24($sp)
; _EN(`pass 7th argument in stack')_RU(`передать 7-й аргумент в стеке'):
.text:00000024                 li      $v0, 6
.text:00000028                 sw      $v0, 0x38+var_20($sp)
; _EN(`pass 8th argument in stack')_RU(`передать 8-й аргумент в стеке'):
.text:0000002C                 li      $v0, 7
.text:00000030                 lw      $t9, (printf & 0xFFFF)($gp)
.text:00000034                 sw      $v0, 0x38+var_1C($sp)
; _EN(`prepare 1st argument in')_RU(`готовить 1-й аргумент в') $a0: 
.text:00000038                 lui     $a0, ($LC0 >> 16)  # "a=%d; b=%d; c=%d; d=%d; e=%d; f=%d; g=%"...
; _EN(`pass 9th argument in stack')_RU(`передать 9-й аргумент в стеке'):
.text:0000003C                 li      $v0, 8
.text:00000040                 sw      $v0, 0x38+var_18($sp)
; _EN(`pass 1st argument in')_RU(`передать 1-й аргумент в') $a1:
.text:00000044                 la      $a0, ($LC0 & 0xFFFF)  # "a=%d; b=%d; c=%d; d=%d; e=%d; f=%d; g=%"...
; _EN(`pass 2nd argument in')_RU(`передать 2-й аргумент в') $a1:
.text:00000048                 li      $a1, 1
; _EN(`pass 3rd argument in')_RU(`передать 3-й аргумент в') $a2:
.text:0000004C                 li      $a2, 2
; _EN(`call')_RU(`вызов') printf():
.text:00000050                 jalr    $t9
; _EN(`pass 4th argument in')_RU(`передать 4-й аргумент в') $a3 (branch delay slot):
.text:00000054                 li      $a3, 3
; _EN(`function epilogue')_RU(`эпилог функции'):
.text:00000058                 lw      $ra, 0x38+var_4($sp)
; _EN(`set return value to')_RU(`установить возвращаемое значение в') 0:
.text:0000005C                 move    $v0, $zero
; _return
.text:00000060                 jr      $ra
.text:00000064                 addiu   $sp, 0x38 ; branch delay slot
