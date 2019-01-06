module hello_world;

// First of all, we define two inputs and an output.
reg in1, in2;
wire out1;

// When working with gate-level modelling, we need to instanciate all gates one by one.
xor my_xor_gate(out1, in1, in2);

initial begin

  in1 = 0;
  in2 = 0;
  #1; // After changing a set of variables, I need to let a tick pass to allow the change to propagate.
  $display("Test 1 - Result: %b - %s ", out1, (out1 == 0) ? "PASS" : "FAIL" ) ;

  in1 = 0;
  in2 = 1;
  #1; // After changing a set of variables, I need to let a tick pass to allow the change to propagate.
  $display("Test 2 - Result: %b - %s ", out1, (out1 == 1) ? "PASS" : "FAIL" ) ;

  in1 = 1;
  in2 = 0;
  #1; // After changing a set of variables, I need to let a tick pass to allow the change to propagate.
  $display("Test 3 - Result: %b - %s ", out1, (out1 == 1) ? "PASS" : "FAIL" ) ;

  in1 = 1;
  in2 = 1;
  #1; // After changing a set of variables, I need to let a tick pass to allow the change to propagate.
  $display("Test 4 - Result: %b - %s ", out1, (out1 == 0) ? "PASS" : "FAIL" ) ;
   
end

endmodule // End of Module hello_world
