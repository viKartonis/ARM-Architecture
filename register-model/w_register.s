.text
.globl _w_register_probe

_w_register_probe:
    movz x0, #0xDEF0
    movk x0, #0x9ABC, lsl #16
    movk x0, #0x5678, lsl #32
    movk x0, #0x1234, lsl #48

    mov  w0, #42

    ret
