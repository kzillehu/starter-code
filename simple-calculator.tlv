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
   $reset = *reset;
   
   // examples of simple arithmetic operations in TL-Verilog
   $sum[7:0] = $a[3:0] + $b[3:0];
   
   // uncomment and complete the rest of the arithmetic operations below
   //subtraction
   //$dif = ;
   
   //multiplication
   //$pro = ;
   
   //division
   //$div = ;
   
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
