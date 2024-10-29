                .text
                .globl binary2int
                .globl bit2int

                .include "include/stack.s"
                .include "include/syscalls.s"
                .include "include/subroutine.s"



## // binary2int converts a string of binary digits into an integer
binary2int:     nop                     ## public static int binary2int () {
                # a0
                # a1
                # a2
                # a3
                # v0: {return value}
                # t0: digit             ##  int digit;
                # t1: number            ##  int number;
                # t2: neg_one           ##  int neg_one;

                li $t1, 0               ##  number   = 0;
                li $t2, -1              ##  neg_one  = -1;

init:           nop                     ##  ;
                call bit2int            ##  digit = bit2int();
                move $t0, $v0

sam:            beq $t0, $t2, done      ##  for(; digit != neg_one ;) {

body:             nop                   ##     ;   
                  sll $t1, $t1, 1       ##     number = number << 1;
                  add $t1, $t1, $t0     ##     number = number + digit;

next:             nop                   ##     ; 
                  call bit2int          ##     digit = bit2int();
                  move $t0, $v0
                b sam                   ##     break sam
                                        ##  }
done:           nop                     ##  ;         

                move number, $v0        ##  return number;
                jr $ra
                                        # }



                                        # // int bit2int();
                                        # // - reads an ASCII char
                                        # // - returns 
                                        # //   * 0 if '0'
                                        # //   * 1 if '1'
                                        # //   * -1 otherwise
bit2int:        nop                     # public static int bit2int() {
                # a0
                # a1
                # a2
                # a3
                # v0: {return value}

                                        ## int value;
                                        ## int result;
                                        ## int ascii_0;
                                        ## int ascii_1;

                                        ## result = -1;
                                        ## ascii_0 = '0';
                                        ## ascii_1 = '1';

                                        ## mips.read_c();
                                        ## value = mips.retval();

if1:                                    ## if (value == ascii_0) {
cons0:                                  ##    ;      
                                        ##    result = 0;
                                        ##    break if1;
                                        ## }

done1:                                  ## ;      
if2:                                    ## if (value == ascii_1) {
cons1:                                  ##    ;           
                                        ##    result = 1;  
                                        ##    break if2;    
                                        ## }
done2:                                  ## ;
      
               move $vo, result         ## return result;         
               jr $ra                   # }







