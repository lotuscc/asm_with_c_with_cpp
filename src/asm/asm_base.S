# src/asm/asm_base.S

.text
.globl asm_add
.globl asm_sub

asm_add:                    

   push   %ebp
   mov    %esp,%ebp
   mov    0x8(%ebp),%edx
   mov    0xc(%ebp),%eax
   add    %edx,%eax
   pop    %ebp
   ret    

asm_sub:
    push   %ebp
    mov    %esp,%ebp
    mov    0x8(%ebp),%eax
    sub    0xc(%ebp),%eax
    pop    %ebp
    ret  
