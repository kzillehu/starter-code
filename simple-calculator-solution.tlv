\m5_TLV_version 1d: tl-x.org
\m5
   
   // =================================================
   // Welcome!  New to Makerchip? Try the "Learn" menu.
   // =================================================
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   //$reset = *reset;
   
   // examples of simple arithmetic operations in TL-Verilog
   $sum[7:0] = $a[3:0] + $b[3:0];
   
   // uncomment and complete the rest of the arithmetic operations below
   //subtraction
   $diff[7:0] =  $a[3:0] - $b[3:0];
   
   //multiplication
   $prod[7:0] =  $a[3:0] * $b[3:0];
   
   //division
   $div[7:0] =  $a[3:0] / $b[3:0];
   
   $out[7:0] = 
      $sel[1:0] == 3     //if select lines select data input 3 
      ? $quot:    //$out is quotient of the division 
      $sel[1:0] == 2     //if select lines select data input 2 
      ? $prod:   //$out is product of the input a and b 
      $sel[1:0] == 1  //if select lines select data input 1 
      ? $diff :  //$out is difference of input a and b 
      //default 
      $sum; 
   
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
