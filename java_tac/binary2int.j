// binary2int converts a string of binary digits into an integer
public static int binary2int () {

         int digit;
         int number;
         int neg_one;

         number   = 0;
         neg_one  = -1;

init:    ;
         digit = bit2int();
sam:     for(; digit != neg_one ;) {
body:       ;   
            number = number << 1;
            number = number + digit;
next:       ; 
            digit = bit2int();
            break sam;
         }
done:    ;         

         return number;
}



// int bit2int();
// - reads an ASCII char
// - returns 
//   * 0 if '0'
//   * 1 if '1'
//   * -1 otherwise
public static int bit2int() {

         int value;
         int result;
         int ascii_0;
         int ascii_1;

         result = -1;
         ascii_0 = '0';
         ascii_1 = '1';

         mips.read_c();
         value = mips.retval();

if1:     if (value == ascii_0) {
cons0:      ;      
            result = 0;
            break if1;
         }

done1:   ;      
if2:     if (value == ascii_1) {
cons1:      ;           
            result = 1;  
            break if2;    
         }
done2:   ;
      
         return result;         
}







