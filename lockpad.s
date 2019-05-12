@P2_1.s ARM Assembly Language Program To Add Some Data and Store the SUM in R3.
@ as -o lockpad.o lockpad.s
@ ld -o lockpad lockpad.o
@ gcc -o lockpad lockpad.s

.global main
.func main

main:
        LDR R0, =string
        LDR R1, =0xFFFF /*Output number*/
        BL printf
        B exit

exit:
        MOV R7, #1
        SWI 0

.data
string:
        .asciz "%d\n"

