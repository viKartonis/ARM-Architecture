
# Register model

The chosen processor M1 uses AArch64 register model, meaning there are X0-X30 general purpose registers for 64 bit values, W0-W30 for 32 bit values, SP, PC, XZR, WZR.

The program registers.cpp was compiled with O0 and O2 flags, the difference is quite impressive as expected.

## O0 listing 

```asm
...
        str     x0, [sp, #24] ; -- x0 is a func arg register
        str     x1, [sp, #16] ; -- x1 is a func arg register
        ldr     x8, [sp, #24]
        ldr     x9, [sp, #16]
        add     x8, x8, x9.   ; -- addition operation
        str     x8, [sp, #8]
        ldr     x8, [sp, #8]
        mov     x9, #3        ; -- multiplication operation
        mul     x0, x8, x9    ; -- x0 also used as return value register
        add     sp, sp, #32
        ret                   ; -- ret return to the address stored in x30(the link register)
...
```

## O2 listing

```asm
...
        add	x8, x1, x0         ; -- instant addition operation
	    add	x0, x8, x8, lsl #1 ; -- an interesting optimization, mult by 3 is a left shift by 1(mult by 2) plus the original value
    	ret
...
```

### Notes
It is also seen how for example X8 register can hold different temporary values that change by the time.

ISA guaranteers what operations processor can execute, memory access rules, supported data width.
<br>
ABI guaranteers how each specific register will be used, calling convention, alignments, paggings.
