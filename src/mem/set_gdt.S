[GLOBAL load_gdt]

load_gdt:
  mov eax, [esp + 4]
  lgdt [eax]

  mov ax, 0x10
  mov ds, ax
  mov es, ax
  mov fs, ax
  mov ss, ax
  
  mov ax, 0x18
  mov gs, ax

  jmp 0x08:.flush
.flush:
   ret
