	.file	"sesion.c"
	.text
	.globl	fixeduser
	.bss
	.align 32
	.type	fixeduser, @object
	.size	fixeduser, 50
fixeduser:
	.zero	50
	.section	.rodata
.LC0:
	.string	"%04d/%02d/%02d"
	.text
	.globl	ObtenerFecha
	.type	ObtenerFecha, @function
ObtenerFecha:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-68(%rbp), %esi
	movl	-64(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-60(%rbp), %eax
	leal	1900(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ObtenerFecha, .-ObtenerFecha
	.section	.rodata
.LC1:
	.string	"a"
.LC2:
	.string	"logs.txt"
	.align 8
.LC3:
	.string	"\n%s: %s - Ingreso exitoso al sistema!"
	.text
	.globl	InicioExitoso
	.type	InicioExitoso, @function
InicioExitoso:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	call	ObtenerFecha
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	InicioExitoso, .-InicioExitoso
	.section	.rodata
	.align 8
.LC4:
	.string	"\n%s: %s - Ingreso Fallido, Usuario/Clave incorrecto"
	.text
	.globl	InicioFallido
	.type	InicioFallido, @function
InicioFallido:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	call	ObtenerFecha
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	InicioFallido, .-InicioFallido
	.section	.rodata
.LC5:
	.string	"\n"
.LC6:
	.string	"%s-%s"
.LC7:
	.string	"Hoaaaaaa"
.LC8:
	.string	"r"
.LC9:
	.string	"registry.txt"
	.text
	.globl	ValidarUser
	.type	ValidarUser, @function
ValidarUser:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-200(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	movq	-200(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-208(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	movq	-208(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$0, -180(%rbp)
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-176(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -168(%rbp)
	jmp	.L7
.L9:
	leaq	-160(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	movb	$0, -160(%rbp,%rax)
	movq	-176(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$1, -180(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	leaq	fixeduser(%rip), %rax
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L8
.L7:
	movq	-168(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L9
.L8:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-180(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ValidarUser, .-ValidarUser
	.section	.rodata
.LC10:
	.string	"\n%s: %s Salida del Sistema"
	.text
	.globl	Salida
	.type	Salida, @function
Salida:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	call	ObtenerFecha
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	leaq	fixeduser(%rip), %rdx
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %edi
	call	exit@PLT
	.cfi_endproc
.LFE10:
	.size	Salida, .-Salida
	.section	.rodata
.LC11:
	.string	"\n%s: %s - %s"
	.text
	.globl	RegistrarUso
	.type	RegistrarUso, @function
RegistrarUso:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	call	ObtenerFecha
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r8
	leaq	fixeduser(%rip), %rdx
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	RegistrarUso, .-RegistrarUso
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
