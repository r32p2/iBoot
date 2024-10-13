.code16
.section .boot
_start:
movw $0x7C00, %ax
movw %ax, %sp
xorw %ax, %ax
movw %ax, %ss

hlt
