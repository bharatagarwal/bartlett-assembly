.globl		_start
.section	.text
_start:				        # rax	rdi
	movq 	$3, 	%rdi	# 	3
	movq	%rdi, 	%rax	#   3    3
	addq	%rdi, 	%rax	#   6    3
	mulq	%rdi		    #  18    3
	movq	$2,	%rdi        #  18    2
	addq	%rdi,	%rax	#  20	 2
	movq	$4,	%rdi	    #  20	 4
	mulq	%rdi		    #  80	 4
	movq	%rax, 	%rdi	#  80    80

	movq	$60,	%rax	#  60	 80	

	syscall

