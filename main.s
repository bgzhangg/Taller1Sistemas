	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"Triangulo"
.LC1:
	.string	"Paralelogramo"
.LC2:
	.string	"Cuadrado"
.LC3:
	.string	"Rectangulo"
.LC4:
	.string	"Rombo"
.LC5:
	.string	"Trapecio"
.LC6:
	.string	"Circulo"
.LC7:
	.string	"Poligono Regular"
.LC8:
	.string	"Cubo"
.LC9:
	.string	"Cuboide"
.LC10:
	.string	"Cilindro"
.LC11:
	.string	"Esfera"
.LC12:
	.string	"Cono"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, %eax
	call	InicioSesion@PLT
	jmp	.L2
.L20:
	movl	$0, %eax
	call	mostrar_menu_figuras@PLT
	movl	$0, %eax
	call	pedir_opcion@PLT
	movl	%eax, -8(%rbp)
	cmpl	$14, -8(%rbp)
	ja	.L3
	movl	-8(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L5(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L5(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L5:
	.long	.L3-.L5
	.long	.L18-.L5
	.long	.L17-.L5
	.long	.L16-.L5
	.long	.L15-.L5
	.long	.L14-.L5
	.long	.L13-.L5
	.long	.L12-.L5
	.long	.L11-.L5
	.long	.L10-.L5
	.long	.L9-.L5
	.long	.L8-.L5
	.long	.L7-.L5
	.long	.L6-.L5
	.long	.L4-.L5
	.text
.L18:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	triangulo@PLT
	jmp	.L2
.L17:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	paralelogramo@PLT
	jmp	.L2
.L16:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	cuadrado@PLT
	jmp	.L2
.L15:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	rectangulo@PLT
	jmp	.L2
.L14:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	rombo@PLT
	jmp	.L2
.L13:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	trapecio@PLT
	jmp	.L2
.L12:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	circulo@PLT
	jmp	.L2
.L11:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	poligono_regular@PLT
	jmp	.L2
.L10:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	cubo@PLT
	jmp	.L2
.L9:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	cuboide@PLT
	jmp	.L2
.L8:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	cilindro@PLT
	jmp	.L2
.L7:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	esfera@PLT
	jmp	.L2
.L6:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	RegistrarUso@PLT
	movl	$0, %eax
	call	cono@PLT
	jmp	.L2
.L4:
	movl	$0, -4(%rbp)
	movl	$0, %eax
	call	Salida@PLT
	movl	$0, %edi
	call	exit@PLT
.L3:
	movl	$0, %eax
	call	repito@PLT
	nop
.L2:
	cmpl	$0, -4(%rbp)
	jne	.L20
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
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
