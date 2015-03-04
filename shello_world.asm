;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                               ;;
;; This file represents a stupid-simple          ;;
;; hello world-type program.                     ;;
;;                                               ;;
;; There are, however, no null bytes.            ;;
;; Which makes it suitable to use as x86         ;;
;; shellcode.                                    ;;
;;                                               ;;
;; Ian Cohee                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

        [BITS 32] 
        
        section .text
        global _start:

_start:
        xor eax, eax        ; Zero
        push eax            ; push '\0'
        push 0x0a21646c
        push 0x726f7720
        push 0x2c6f2d6c
        push 0x6c656853
        push 0x205d2a5b
        add eax, 0x4        ; sys_write
        xor ebx, ebx
        add ebx, 0x1        ; STDOUT
        mov ecx, esp        ; char *
        xor edx, edx
        add edx, 0x18       ; 24 chars
        int 0x80

exit:
        xor eax, eax
        add eax, 0x1
        xor ebx, ebx
        add ebx, 0x1
        int 0x80
