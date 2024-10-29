public static int binary2int () {

  //  number = number * 2 + git_bit()

  for( digit = bit2int(); digit != -1 ; digit = bit2int(); ) {


  }
  return digit;

}



// int bit2int();
// - reads an ASCII char
// - returns 
//   * 0 if '0'
//   * 1 if '1'
//   * -1 otherwise


public static int bit2int() {

   int value;
   int result = -1;

   mips.read_c();
   value = mips.retval();

   if (value == '0') {
      result = 0;
   }
   if (value == '1') {
      result = 1;      
   }

   return result;         
}