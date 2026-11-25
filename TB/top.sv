# code for Top Module
  ...
  module top;


        // import ram_test_pkg
        import ram_test_pkg::*;
        // import the UVM package
        import uvm_pkg::*;

        // include the uvm_macros.svh
        `include "uvm_macros.svh"


        // Within initial begin

        // Call run_test()
        initial
                begin
                        run_test();
                end


endmodule : top
...
