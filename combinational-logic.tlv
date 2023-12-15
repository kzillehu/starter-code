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
   
   // examples of simple combinational logic in TL-Verilog
   $out_inverse = !$in;
   $out_and = $a & $b;
   $out_or = $a | $b;
   
   // uncomment and complete the complex combination logic below
   //$out_nand = ;
   //$out_nor = ;
   //$out_xor = ;
   
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
